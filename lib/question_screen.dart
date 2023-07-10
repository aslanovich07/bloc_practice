import 'package:bloc_practice/data/questions.dart';
import 'package:bloc_practice/widgets/question_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectedanswer});
  final void Function(String answer) onSelectedanswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectedanswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currrentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currrentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            ...currrentQuestion.getShuffledAnswers().map((answers) {
              return QuestionButton(
                text: answers,
                onTap: () {
                  answerQuestion(answers);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
