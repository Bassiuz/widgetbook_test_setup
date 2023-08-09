// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

import 'package:widgetbook/widgetbook.dart';
import 'widgets/modal_button_test.dart';
import 'widgets/test_field_widget_test.dart';

final directories = [
  WidgetbookFolder(
    name: 'widgets',
    children: [
      WidgetbookComponent(
        name: 'TestFieldWidget',
        useCases: [
          WidgetbookUseCase(
            name: 'with a lot of text',
            builder: (context) => longTextTestFieldWidget(context),
          ),
          WidgetbookUseCase(
            name: 'with no text',
            builder: (context) => noTextTestFieldWidget(context),
          ),
        ],
      ),
    ],
  ),
  WidgetbookFolder(
    name: 'material',
    children: [
      WidgetbookComponent(
        name: 'AlertDialog',
        useCases: [
          WidgetbookUseCase(
            name: 'show modal on button click',
            builder: (context) => alertDialogWidget(context),
          ),
        ],
      ),
    ],
  ),
];
