import 'package:flutter/material.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('The Question...'),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(''),
        ),
      ],
    );
  }
}
