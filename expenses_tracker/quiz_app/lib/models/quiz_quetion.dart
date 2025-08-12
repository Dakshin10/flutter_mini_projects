// Blueprint

class QuizQuestion {
  const QuizQuestion(this.text,this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shaffledList =  List.of(answers);  //Storing the copy of the list in a variable
    shaffledList.shuffle(); // Shuffling the list and returning 
    return shaffledList;
  }

}