import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/usecases/search_movies.dart';
import 'package:ditonton/domain/usecases/search_tv_series.dart';
import 'package:flutter/foundation.dart';

class MovieSearchNotifier extends ChangeNotifier {
  final SearchMovies searchMovies;
  final SearchTvSeries searchTvSeries;

  MovieSearchNotifier({
    required this.searchMovies,
    required this.searchTvSeries,
  });

  RequestState _state = RequestState.Empty;
  RequestState get state => _state;

  List<dynamic> _searchResult = [];
  List<dynamic> get searchResult => _searchResult;

  String _message = '';
  String get message => _message;

  Future<void> fetchMovieSearch(String query) async {
    searchResult.clear();
    _state = RequestState.Loading;
    notifyListeners();

    final result = await searchMovies.execute(query);
    final resultTvSeries = await searchTvSeries.execute(query);
    result.fold(
      (failure) {
        _message = failure.message;
        _state = RequestState.Error;
        notifyListeners();
      },
      (data) {
        _searchResult.addAll(data);
        _state = RequestState.Loaded;
        notifyListeners();
      },
    );

    resultTvSeries.fold((failure) {
      _message = failure.message;
      _state = RequestState.Error;
      notifyListeners();
    }, (data) {
      _searchResult.addAll(data);
      _state = RequestState.Loaded;
      notifyListeners();
    });
  }
}
