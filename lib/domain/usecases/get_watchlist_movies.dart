import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/repositories/movie_repository.dart';
import 'package:ditonton/common/failure.dart';

class GetWatchlistMovies {
  final MovieRepository _repository;

  GetWatchlistMovies(this._repository);

  Future<Either<Failure, List<dynamic>>> execute() {
    return _repository.getWatchlistMovies();
  }
}
