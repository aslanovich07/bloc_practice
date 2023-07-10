import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrect, required this.questionIndex});
  final int questionIndex;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color:
              isCorrect ? const Color.fromARGB(255, 76, 167, 241) : Colors.red),
      child: Text(questionNumber.toString(),
          style: const TextStyle(
              color: Color.fromARGB(255, 30, 6, 6),
              fontSize: 24,
              fontWeight: FontWeight.bold)),
    );
  }
}
