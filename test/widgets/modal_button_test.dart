import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'show modal on button click', type: AlertDialog)
Widget alertDialogWidget(BuildContext context) {
  return TextButton(
    onPressed: () => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text(
            'AlertDialog Title - AlertDialog Title - AlertDialog Title - AlertDialog Title - AlertDialog Title - AlertDialog Title - AlertDialog Title - AlertDialog Title - '),
        content: const Text('AlertDialog description'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    ),
    child: const Text('Show Dialog'),
  );
}

void main() {
  testWidgets(
    "test description",
    (WidgetTester tester) async {
      Widget widget = Builder(builder: ((context) => alertDialogWidget(context)));
      await tester.pumpWidget(widget);
      expect(find.text('Show Dialog'), findsOneWidget);
    },
  );
}
