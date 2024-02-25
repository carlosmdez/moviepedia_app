import 'package:moviepedia_app/domain/entities/movie.dart';
import 'package:moviepedia_app/infrastructure/models/movie_db_resp_result.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieDbRespResult movieDbResult) => Movie(
        adult: movieDbResult.adult,
        backdropPath: movieDbResult.backdropPath != ''
            ? 'https://image.tmdb.org/t/p/w500${movieDbResult.backdropPath}'
            : 'https://www.indieactivity.com/wp-content/uploads/2022/03/File-Not-Found-Profile.jpg',
        genreIds: movieDbResult.genreIds.map((id) => id.toString()).toList(),
        id: movieDbResult.id,
        originalLanguage: movieDbResult.originalLanguage,
        originalTitle: movieDbResult.originalTitle,
        overview: movieDbResult.overview,
        popularity: movieDbResult.popularity,
        posterPath: movieDbResult.posterPath != ''
            ? 'https://image.tmdb.org/t/p/w500${movieDbResult.posterPath}'
            : '',
        releaseDate: movieDbResult.releaseDate,
        title: movieDbResult.title,
        video: movieDbResult.video,
        voteAverage: movieDbResult.voteAverage,
        voteCount: movieDbResult.voteCount,
      );
}
