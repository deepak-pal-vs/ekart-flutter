import 'package:first_flutter/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:first_flutter/main.dart';

void main() {
  testWidgets('Home test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byType(Container), findsOneWidget);
  });
}
