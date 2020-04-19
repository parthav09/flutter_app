import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _questions = const [
    {
      'Questions': "What is your favourite colour",
      'answers': [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 20},
        {"text": "BLue", "score": 30},
        {"text": "Green", "score": 40}
      ]
    },
    {
      'Questions': "What is your favourite animal",
      'answers': [
        {"text": "Lion", "score": 10},
        {"text": "Tiger", "score": 20},
        {"text": "Elephant", "score": 30},
        {"text": "Dog", "score": 40}
      ]
    },
    {
      'Questions': "Which is your favourite company",
      'answers': [
        {"text": "Samsung", "score": 10},
        {"text": "Tesla", "score": 20},
        {"text": "Google", "score": 30},
        {"text": "Apple", "score": 40}
      ]
    },
  ];
  var _questionsindex = 0;
  var _totalscore = 0;

  void _resetquiz(){
    setState(() {
      _questionsindex=0;
      _totalscore=0;
    });
  }

  void _answerquestion(int score) {
    // var aBool = true;
    // aBool = false;
    _totalscore = _totalscore + score;

    setState(() {
      _questionsindex = _questionsindex + 1;
    });
    print(_questionsindex);
    if (_questionsindex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcom to my quiz"),
        ),
        body: _questionsindex < _questions.length
            ? Quiz(
                answerQuestions: _answerquestion,
                questions: _questions,
                questionindex: _questionsindex,
              )
            : Result(_totalscore,_resetquiz),
      ),
    );
  }
}
