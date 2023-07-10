import 'package:bloc_practice/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answers'] == itemData['correct_answers'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrect: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          children: [
            Text(
              itemData['questions'] as String,
              style: GoogleFonts.lato(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              itemData['user_answers'] as String,
              style: const TextStyle(color: Colors.purple),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              itemData['correct_answers'] as String,
              style: const TextStyle(color: Colors.green),
            ),
          ],
        ))
      ],
    );
  }
}
