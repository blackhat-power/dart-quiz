
import 'dart:io';
double prompt(String args4u){
  print(args4u);
  double answerNum=double.parse(stdin.readLineSync());
  return answerNum;
}
class MathQuestion{
  String question;
  double answer;
  MathQuestion(String aQuestion, double aAnswer){
    this.question=aQuestion;
    this.answer=aAnswer;
  }
}
void main(){
  List<MathQuestion> questions=[
    MathQuestion("3+5", 8.0),
    MathQuestion("9*100", 900.0),
    MathQuestion("20/4", 5.0)
  ];
  int score=0;
for( MathQuestion mathQuestion in questions ){
  double userAnswer=prompt(mathQuestion.question);
  if(userAnswer==mathQuestion.answer){
    score++;
  }
}
  print('your score is ${score}/${questions.length}');
}