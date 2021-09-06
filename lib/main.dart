import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\' your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\' your favorite animal?',
      'answers': [
        {'text': 'Rabit', 'score': 10},
        {'text': 'Snake', 'score': 6},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Hippo', 'score': 2},
      ],
    },
    {
      'questionText': 'Who\' your favorite instructor?',
      'answers': [
        {'text': 'Mac', 'score': 10},
        {'text': 'Andy', 'score': 4},
        {'text': 'Alex', 'score': 7},
        {'text': 'Minna', 'score': 2},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('more question');
    } else {
      print('no more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
/*ElevatedButton(
              child: Text("answer1"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text("answer2"),
              onPressed: () {
                //...
                print("answer2 chosen");
              },
            ),
            ElevatedButton(
              child: Text("answer3"),
              onPressed: () => print("answer3 chosen"),
            ),*/