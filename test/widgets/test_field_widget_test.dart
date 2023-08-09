import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_test_setup/widgets/test_field_widget.dart';

@widgetbook.UseCase(name: 'with a lot of text', type: TestFieldWidget)
Widget longTextTestFieldWidget(BuildContext _) {
  return const TestFieldWidget(text: 'A very long test to create a certain amount of text to see how it looks like.');
}

@widgetbook.UseCase(name: 'with no text', type: TestFieldWidget)
Widget noTextTestFieldWidget(BuildContext _) {
  return const TestFieldWidget(text: '');
}

void main() {
  testWidgets(
    "test description",
    (WidgetTester tester) async {
      Widget widget = Builder(builder: ((context) => longTextTestFieldWidget(context)));
      await tester.pumpWidget(widget);
      expect(
          find.text('A very long test to create a certain amount of text to see how it looks like.'), findsOneWidget);
    },
  );
}
