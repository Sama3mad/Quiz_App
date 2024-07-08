import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start_screen'; 
  @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen); 
  //   // TODO: implement initState
  //   super.initState();
  // }
  //The initState method is used for one-time initialization when the state object is first created.
  void switchScreen(){
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Color.fromARGB(255, 110, 69, 180)],
          ),
        ),
        child: activeScreen == 'start_screen' ? StartScreen(switchScreen) : QuestionsScreen(),
      ),
    );
  }
}
