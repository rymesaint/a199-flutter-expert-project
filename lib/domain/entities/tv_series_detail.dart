import 'package:ditonton/domain/entities/genre.dart';
import 'package:equatable/equatable.dart';

class TvSeriesDetail extends Equatable {
  TvSeriesDetail({
    required this.backdropPath,
    required this.episodeRunTime,
    required this.firstAirDate,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.inProduction,
    required this.languages,
    required this.name,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.voteAverage,
    required this.voteCount,
    required this.status,
    required this.tagline,
  });

  final String? backdropPath;
  final List<Genre> genres;
  final String homepage;
  final int id;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final String status;
  final String tagline;
  final double voteAverage;
  final int voteCount;
  final List<String> originCountry;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final bool inProduction;
  final List<String> languages;
  final String firstAirDate;
  final List<int> episodeRunTime;
  final String name;

  @override
  List<Object?> get props => [
        originalName,
        backdropPath,
        genres,
        id,
        overview,
        posterPath,
        originCountry,
        numberOfEpisodes,
        numberOfSeasons,
        inProduction,
        languages,
        firstAirDate,
        episodeRunTime,
        name,
        voteAverage,
        voteCount,
      ];
}
