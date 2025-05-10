import 'package:flutter/material.dart';

class EntryField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const EntryField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'new data goes here',
        border: OutlineInputBorder(),
        labelText: 'Enter your text',
      ),
      onChanged: onChanged,
    );
  }
}
