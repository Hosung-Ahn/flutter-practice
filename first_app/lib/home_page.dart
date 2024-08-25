import 'package:flutter/material.dart';
import 'custom_text.dart';

// MyHomePage 위젯은 메인 화면을 나타냅니다.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
      ),
      body: const CustomLinearGradient(
        colors: [
          Colors.blue,
          Colors.red,
        ],
        child: Center(
          child: CustomText(
            text: 'Hello, World!',
            size: 30,
            color: Colors.white,
            weight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomLinearGradient extends StatelessWidget {
  final Alignment begin;
  final Alignment end;
  final List<Color> colors;
  final Widget child;

  const CustomLinearGradient({
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
    required this.colors,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: colors,
        ),
      ),
      child: child,
    );
  }
}
