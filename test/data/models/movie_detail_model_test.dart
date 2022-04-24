import 'package:ditonton/data/models/movie_detail_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tMovieDetailModel = MovieDetailResponse(
      adult: false,
      backdropPath: "/path.jpg",
      id: 1,
      originalTitle: "Original Title",
      overview: "Overview",
      popularity: 1.0,
      posterPath: "/path.jpg",
      releaseDate: "2020-05-05",
      title: "Title",
      video: false,
      voteAverage: 1.0,
      voteCount: 1,
      budget: 120,
      genres: [],
      homepage: '',
      imdbId: '',
      originalLanguage: '',
      revenue: 1,
      runtime: 60,
      status: '',
      tagline: '');

  test('should return a JSON map containing proper data', () {
    final result = tMovieDetailModel.toJson();

    final expectedJson = {
      "adult": false,
      "backdrop_path": "/path.jpg",
      "genres": [],
      "id": 1,
      "original_title": "Original Title",
      "overview": "Overview",
      "popularity": 1.0,
      "poster_path": "/path.jpg",
      "release_date": "2020-05-05",
      "title": "Title",
      "video": false,
      "vote_average": 1.0,
      "vote_count": 1,
      "budget": 120,
      "imdb_id": '',
      "tagline": '',
      "status": '',
      "runtime": 60,
      "revenue": 1,
      "original_language": '',
      "homepage": '',
    };

    expect(result, expectedJson);
  });
}
