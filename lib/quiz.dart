import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>questions;
  final Function answerQuestions;
  final int questionindex;

  Quiz({@required this.questions,
      @required this.answerQuestions,
      @required this.questionindex});

  @override
  Widget build(BuildContext context) {
  return Column(
  children: [
  Question(
  questions[questionindex]['Questions'],
  ),
  ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
      .map((answers) {
  return Answer(()=> answerQuestions(answers['score']), answers['text']);
  }).toList()
  //Answer(_answerquestions),
  //Answer(_answerquestions),
  //Answer(_answerquestions),
  ],
  );
  }
}
