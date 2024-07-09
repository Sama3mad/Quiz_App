import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary({super.key, required this.summaryData});
  List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map(
              (data) {
                return Row(
                  children: [
                    Text(((data['Question index'] as int) + 1).toString(),
                        style: GoogleFonts.cabin(
                          color: Color.fromARGB(255, 0, 238, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        children: [
                          Text(data['Question'] as String,
                              style: GoogleFonts.cabin(
                                color: Color.fromARGB(255, 0, 238, 255),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(height: 5),
                          Text('Correct Answer: ',
                              style: GoogleFonts.cabin(
                                color: Colors.white,
                                fontSize: 13,
                              )),
                          Text(data['Correct Answer'] as String,
                              style: GoogleFonts.cabin(
                                color: Colors.white,
                                fontSize: 15,
                              )),
                          SizedBox(height: 20),
                          Text('Your Answer: ',
                              style: GoogleFonts.cabin(
                                color: Colors.white,
                                fontSize: 13,
                              )),
                          Text(data['User Answer'] as String,
                              style: GoogleFonts.cabin(
                                color: Colors.white,
                                fontSize: 15,
                              )),
                          SizedBox(height: 20),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
