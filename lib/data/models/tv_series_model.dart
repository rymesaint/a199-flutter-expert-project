import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:equatable/equatable.dart';

class TvSeriesModel extends Equatable {
  TvSeriesModel({
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

  final String? originalName;
  final String? backdropPath;
  final List<int>? genreIds;
  final int id;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<String>? originCountry;
  final String? firstAirDate;
  final double? voteAverage;
  final int? voteCount;
  final String? originalLanguage;
  final String? name;

  factory TvSeriesModel.fromJson(Map<String, dynamic> json) => TvSeriesModel(
        originCountry: List<String>.from(json["origin_country"].map((x) => x)),
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        originalName: json["original_name"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        firstAirDate: json["first_air_date"].toString(),
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
        originalLanguage: json['original_language'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        "original_language": originalLanguage,
        "backdrop_path": backdropPath,
        "genre_ids":
            genreIds == null ? [] : List<dynamic>.from(genreIds!.map((x) => x)),
        "id": id,
        "original_name": originalName,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "first_air_date": firstAirDate,
        "origin_country": originCountry == null
            ? []
            : List<dynamic>.from(originCountry!.map((x) => x)),
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "name": name,
      };

  TvSeries toEntity() {
    return TvSeries(
      originalLanguage: this.originalLanguage,
      backdropPath: this.backdropPath,
      genreIds: this.genreIds,
      id: this.id,
      originalName: this.originalName,
      overview: this.overview,
      popularity: this.popularity,
      posterPath: this.posterPath,
      firstAirDate: this.firstAirDate,
      originCountry: this.originCountry,
      voteAverage: this.voteAverage,
      voteCount: this.voteCount,
      name: this.name,
    );
  }

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
        firstAirDate,
        originCountry,
        voteAverage,
        voteCount,
      ];
}
