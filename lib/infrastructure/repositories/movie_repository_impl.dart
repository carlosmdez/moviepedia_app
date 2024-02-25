import 'package:moviepedia_app/domain/datasources/movies_datasource.dart';
import 'package:moviepedia_app/domain/entities/movie.dart';
import 'package:moviepedia_app/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl implements MoviesRepository {
  final MoviesDataSource moviesDataSource;

  MovieRepositoryImpl(this.moviesDataSource);

  @override
  Future<List<Movie>> getNowPlying({int page = 1}) {
    return moviesDataSource.getNowPlying(page: page);
  }
}
