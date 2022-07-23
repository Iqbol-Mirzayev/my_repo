import 'package:flutter/material.dart';

class Networks extends StatelessWidget {
  const Networks({Key? key,required this.Icons}) : super(key: key);
  final String Icons;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Icons),
      ],
    );
  }
}
