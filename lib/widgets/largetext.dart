import 'package:flutter/material.dart';

class largeText extends StatelessWidget {
  double size = 35;
  final String text;
  final Color color;
  largeText(
      {Key? key, required this.text, this.color = Colors.black, this.size = 35})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: size, color: color, fontWeight: FontWeight.bold),
    );
  }
}
