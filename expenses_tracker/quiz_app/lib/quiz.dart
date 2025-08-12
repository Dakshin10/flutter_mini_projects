import 'package:flutter/material.dart';
import 'package:quiz_app/data/quetions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}


class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answers){
    selectedAnswers.add(answers);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz(){
      setState(() {
        selectedAnswers = [];
        activeScreen = 'question-screen';
      });
  }

  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'question-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer,);
    }
    if(activeScreen == 'result-screen'){
      screenWidget = ResultsScreen(chooseAnswer: selectedAnswers,onRestart: restartQuiz,);
    }

    return MaterialApp(
      home: Scaffold(body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
            Color.fromARGB(255, 83, 14, 163),
            Color.fromARGB(255, 132, 23, 205),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          )
        ),
        child: screenWidget,
        )
        ),
    );
  }
}