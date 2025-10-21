// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app/main.dart';

void main() {
  testWidgets('MeuApp button changes text', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MeuApp());

    // Verify initial text is shown.
    expect(find.text('Olá! Clique no botão abaixo.'), findsOneWidget);

    // Verify the button is present.
    expect(find.text('Clique aqui'), findsOneWidget);

    // Tap the button and trigger a frame.
    await tester.tap(find.text('Clique aqui'));
    await tester.pump();

    // Verify that the text changed after tapping the button.
    expect(find.text('Você clicou no botão!'), findsOneWidget);
  });
}
