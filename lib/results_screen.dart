import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.chosenAnswers, required this.returnToStart});
  List<String> chosenAnswers;
  void Function() returnToStart;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++)
      summary.add({
        'Question index': i,
        'Question': questions[i].text,
        'Correct Answer': questions[i].answers[0],
        'User Answer': chosenAnswers[i],
      });
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> summaryData = getSummaryData();
    var numCorrectQuestions = summaryData.where((element) {
      return element['Correct Answer'] == element['User Answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $numCorrectQuestions of ${questions.length} questions correctly!',
                style: GoogleFonts.cabin(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30),
            QuestionsSummary(summaryData: getSummaryData()),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: returnToStart,
                child: Text('Restart Quiz',
                    style: TextStyle(color: Colors.black))),
          ],
        ),
      ),
    );
  }
}
