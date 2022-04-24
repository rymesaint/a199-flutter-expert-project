import 'package:ditonton/presentation/widgets/movie_card_list.dart';
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

  testWidgets('Test movie card list', (tester) async {
    await tester.pumpWidget(_makeMaterial(MovieCard(testMovie)));
    var title = find.text(testMovie.title!);
    expect(title, findsOneWidget);
    var overview = find.text(testMovie.overview!);
    expect(overview, findsOneWidget);
  });
}
