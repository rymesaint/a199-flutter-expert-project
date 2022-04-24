// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class TvSeries extends Equatable {
  TvSeries({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.firstAirDate,
    required this.originCountry,
    required this.voteAverage,
    required this.voteCount,
    required this.originalLanguage,
    required this.name,
  });

  TvSeries.watchlist({
    required this.id,
    required this.overview,
    required this.posterPath,
    required this.name,
    this.isMovie,
  });

  String? originalName;
  String? backdropPath;
  List<int>? genreIds;
  int id;
  String? overview;
  double? popularity;
  String? posterPath;
  List<String>? originCountry;
  String? firstAirDate;
  double? voteAverage;
  int? voteCount;
  String? originalLanguage;
  String? name;
  bool? isMovie;

  @override
  List<Object?> get props => [
        originalLanguage,
        backdropPath,
        genreIds,
        id,
        originalName,
        overview,
        popularity,
        posterPath,
        originCountry,
        firstAirDate,
        voteAverage,
        voteCount,
        name,
      ];
}
