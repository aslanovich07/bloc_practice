import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(153, 255, 255, 255),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Learn flutter fun way',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt_outlined),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              switchScreen();
            },
            label: const Text('Start quiz'))
      ]),
    );
  }
}
