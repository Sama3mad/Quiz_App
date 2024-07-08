import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_app/quiz.dart';
import 'package:second_app/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quiz(),
    );
  }
}