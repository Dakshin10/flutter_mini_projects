import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/quetions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuetion(String selectedAnswers){

    widget.onSelectAnswer(selectedAnswers);

    setState(() {
      currentQuestionIndex++;
    });
  } 

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            Text(currentQuestion.text,style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 200, 153, 251),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
        
            ...currentQuestion.getShuffledAnswers().map((answer) {                     
              return AnswerButton(answerText: answer, 
              onTap: (){
                answerQuetion(answer);
              },);
            }),

            //we do the above function for code reuseability and addapting to the number of answer for each quetion 
            //without leavig any blank space for the answerbutton
            //Avoid Code duplication
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //    onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //    onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //    onTap: () {},
            // ),
            //  AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //    onTap: () {},
            // ),
          ],
        ),
      ),
    )
    
    ;
  }
  
}