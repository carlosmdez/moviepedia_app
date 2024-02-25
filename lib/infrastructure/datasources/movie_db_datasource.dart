import 'package:dio/dio.dart';
import 'package:moviepedia_app/config/constants/env.dart';

import 'package:moviepedia_app/domain/datasources/movies_datasource.dart';
import 'package:moviepedia_app/domain/entities/movie.dart';
import 'package:moviepedia_app/infrastructure/datasources/mappers/movie_mapper.dart';
import 'package:moviepedia_app/infrastructure/models/movie_db_response.dart';

class MovieDbDatasource implements MoviesDataSource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Env.movieDbApiKey,
        'language': 'es-MX',
      },
    ),
  );

  @override
  Future<List<Movie>> getNowPlying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing', queryParameters: {
      'page': page,
    });
    final movieDbResponse = MovieDbResponse.fromJson(response.data);
    final List<Movie> movies = movieDbResponse.results
        .where((movie) => movie.posterPath != '')
        .map((movieDbResult) => MovieMapper.movieDbToEntity(movieDbResult))
        .toList();
    return movies;
  }
}
