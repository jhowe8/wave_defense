import 'package:flutter_test/flutter_test.dart';

import 'package:wave_defense/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(App());
  });
}
