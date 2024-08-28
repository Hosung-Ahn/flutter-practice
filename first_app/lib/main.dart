 import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

// MyApp 위젯은 애플리케이션의 루트 위젯입니다.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
