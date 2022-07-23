import 'package:flutter/material.dart';

class InputGap extends StatelessWidget {
  const InputGap({Key? key, required this.letter}) : super(key: key);
  final String letter;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: letter,
      ),
    );
  }
}
