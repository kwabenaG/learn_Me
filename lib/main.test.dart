// Test if the FloatingActionButton has the correct tooltip and child Icon

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';

void main() {
  testWidgets('TestFloatingActionButton', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    // Find the FloatingActionButton
    final floatingActionButtonFinder = find.byType(FloatingActionButton);

    // Verify the tooltip
    expect(
      tester.widget<FloatingActionButton>(floatingActionButtonFinder).tooltip,
      'Increment',
    );

    // Verify the child Icon
    expect(
      tester.widget<FloatingActionButton>(floatingActionButtonFinder).child,
      const Icon(Icons.add),
    );
  });
}
