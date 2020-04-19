import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final Function _resetquiz;
  final int resultscore;
  Result(this.resultscore,this._resetquiz);
  String get resultPhrase{
    var resulttext= 'You did it';
    if(resultscore<100){
      resulttext = "You are awsome";
    }
    else if(resultscore < 200){
      resulttext = "You are awesome";
    }
    else{
      resulttext = "You are excellenet";
    }
    return resulttext;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children: <Widget>[
          Text(resultPhrase),
          FlatButton(
            child: Text('Reset Quiz'),
            onPressed: _resetquiz,
          ),
        ],
      ),
    );
  }
}
