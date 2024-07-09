import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/results_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = 'start_screen'; 

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
      activeScreen = 'results_screen';
    });
  }
  }
  @override
  void switchScreen(){
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  void startAgain(){
    selectedAnswers = []; 
    setState(() {
      activeScreen = 'start_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen); 
    if(activeScreen == 'questions_screen')
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    else if(activeScreen == 'results_screen')
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, returnToStart: startAgain);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Color.fromARGB(255, 110, 69, 180)],
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}
