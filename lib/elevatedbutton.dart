import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ebutton extends StatelessWidget {
  final VoidCallback onPressed;

  const Ebutton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: CupertinoColors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          minimumSize: const Size.fromHeight(50),
          fixedSize: const Size(80, 20),
        ),
        onPressed: onPressed,
        child: Text('press me',
            style: TextStyle(color: CupertinoColors.white, fontSize: 14)));
  }
}
