import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'Excellent';
    } else if (resultScore <= 12) {
      resultText = 'Preferly likable';
    } else if (resultScore <= 12) {
      resultText = 'Insane';
    } else {
      resultText = 'Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style:TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(child: Text('Restart'), onPressed: resetHandler,)
      ])
      //style: Textstyle(fontSize: 36, fontWeight: FontWeight.bold)
    );
  }
}
