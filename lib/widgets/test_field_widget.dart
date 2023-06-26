import 'package:flutter/material.dart';

class TestFieldWidget extends StatelessWidget {
  const TestFieldWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.purple));
  }
}
