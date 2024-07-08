class QuizQuestion{
  QuizQuestion(this.text, this.answers);

  String text;
  List <String> answers; 

  List <String> getShuffledAnswers(){
    List <String> shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
}
}