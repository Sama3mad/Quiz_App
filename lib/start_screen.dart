import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      //aligns it both horizontally and vertically within its parent
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
            //add some transparency
          ),
          // Image(
          //   image: AssetImage('assets/quiz-logo.png'),
          // ),
          SizedBox(height: 50),
          Text('Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
              )),
          SizedBox(height: 50),
          ElevatedButton.icon(
            onPressed: () {
              startQuiz();
            },
            icon: Icon(Icons.arrow_right),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
