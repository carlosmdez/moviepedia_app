import 'package:moviepedia_app/domain/entities/movie.dart';

abstract class MoviesDataSource {
  Future<List<Movie>> getNowPlying({int page = 1});
}
