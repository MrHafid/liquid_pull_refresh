import 'package:flutter_test/flutter_test.dart';

import '../example/lib/main.dart';

void main() {
  testWidgets('smoke test for the app', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text("This item represents A."), findsOneWidget);
  });

  testWidgets('full dragging', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.drag(find.byType(MyApp), const Offset(0.0, 400.0));
    tester.pumpAndSettle();
  });

  testWidgets('incomplete dragging', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.drag(find.byType(MyApp), const Offset(0.0, 100.0));
    tester.pumpAndSettle();
  });
}
