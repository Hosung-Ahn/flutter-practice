import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const CustomText({
    required this.text,
    this.size = 16,
    this.color = Colors.black,
    this.weight = FontWeight.normal,
    super.key,
  });

  const CustomText.h1({
    required this.text,
    this.size = 32,
    this.color = Colors.black,
    this.weight = FontWeight.bold,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
