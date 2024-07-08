import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppContent(),
    );
  }
}

class AppContent extends StatelessWidget {
  const AppContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(65, 72, 0, 255),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Image(
            image: AssetImage('assets/quiz-logo.png'),
          ),
          SizedBox(height: 50),
          Text('Learn Flutter the fun way!',
              style: TextStyle(color: Colors.white, fontSize: 25)),
          SizedBox(height: 50),
          ElevatedButton(onPressed: (){}, child: Text('Start Quiz')),
        ],
      ),
    );
  }
}
