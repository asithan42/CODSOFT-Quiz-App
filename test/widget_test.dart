import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quizapp/main.dart';

void main() {
  testWidgets('Test Quiz App UI', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyWidget());

    // Verify that the first question is displayed.
    expect(find.text('Question 1/3'), findsOneWidget);

    // Verify that the first answer option is displayed.
    expect(find.text('Option A'), findsOneWidget);

    // Tap the first answer option and trigger a frame.
    await tester.tap(find.text('Option A'));
    await tester.pump();

    // Verify that the "Next Question" button is enabled.
    expect(find.widgetWithText(OutlinedButton, 'Next Question'), findsOneWidget);

    // Tap the "Next Question" button and trigger a frame.
    await tester.tap(find.widgetWithText(OutlinedButton, 'Next Question'));
    await tester.pump();

    // Verify that the second question is displayed.
    expect(find.text('Question 2/3'), findsOneWidget);

    // Add more test cases based on your app's logic.

  });
}
