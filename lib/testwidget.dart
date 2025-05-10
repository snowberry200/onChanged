import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  final String text;
  const TestWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontStyle: FontStyle.italic,
          color: const Color.fromARGB(221, 98, 27, 27),
          fontSize: 50),
    );
  }
}
