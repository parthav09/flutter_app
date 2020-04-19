import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function SelectHandler;
  final String answertext;

  Answer(this.SelectHandler, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 30,left: 30),
      child: RaisedButton(
        color: Colors.deepPurple,
        textColor: Colors.cyanAccent,
        elevation: 5.0,
        child: Text(answertext),
        onPressed: SelectHandler,
      ),
    );
  }
}
