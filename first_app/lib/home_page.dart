import 'package:flutter/material.dart';
import 'custom_text.dart';

const beginAlign = Alignment.topLeft;
const Alignment endAlign = Alignment.bottomRight;

// MyHomePage 위젯은 메인 화면을 나타냅니다.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: beginAlign,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: const Center(
          child: CustomText(
            text: 'Hello, Flutter!!',
            size: 30,
            color: Colors.white,
            weight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
