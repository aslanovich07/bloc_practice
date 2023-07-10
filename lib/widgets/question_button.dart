import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({super.key, required this.text, required this.onTap});
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 93, 125, 181),
          foregroundColor: Colors.white),
      child:
          Text(text, textAlign: TextAlign.center, style: GoogleFonts.akshar()),
    );
  }
}
