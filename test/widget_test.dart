// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the Widgettestr
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use Widgettestr to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:spotify/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (Widgettestr testr) async {
    // Build our app and trigger a frame.
    await testr.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await testr.tap(find.byIcon(Icons.add));
    await testr.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
