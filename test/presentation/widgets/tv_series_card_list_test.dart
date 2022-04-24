import 'package:ditonton/presentation/widgets/movie_card_list.dart';
import 'package:ditonton/presentation/widgets/tv_series_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../dummy_data/dummy_objects.dart';

void main() {
  _makeMaterial(Widget body) {
    return MaterialApp(
      home: Material(
        child: body,
      ),
    );
  }

  testWidgets('Test tv series card list', (tester) async {
    await tester.pumpWidget(_makeMaterial(TvSeriesCard(tTvSeries)));
    var title = find.text(tTvSeries.name!);
    expect(title, findsOneWidget);
    var overview = find.text(tTvSeries.overview!);
    expect(overview, findsOneWidget);
  });
}
