import 'package:bloc_practice/data/questions.dart';
import 'package:bloc_practice/question_screen.dart';
import 'package:bloc_practice/result_screen.dart';
import 'package:bloc_practice/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'startScreen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questionScreen';
    });
  }

  void onRestart() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questionScreen';
    });
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'resultScreen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "questionScreen") {
      screenWidget = QuestionScreen(onSelectedanswer: chooseAnswers);
    }
    if (activeScreen == 'startScreen') {
      screenWidget = StartScreen(switchScreen);
    }
    if (activeScreen == 'resultScreen') {
      screenWidget = ResultScreen(
        onRestart: onRestart,
        chosenAnswer: selectedAnswers,
      );
    }

    return MaterialApp(
        home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 59, 18, 142),
                Color.fromARGB(255, 16, 6, 108)
              ])),
          child: screenWidget),
    ));
  }
}
