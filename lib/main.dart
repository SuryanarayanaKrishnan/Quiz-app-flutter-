import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qindex = 0;
  var _totalScore = 0;

  void _resetHandler() {
    setState(() {
      _qindex = 0;
      _totalScore = 0;
    });


  }

  void _answerQ(int score) {
    _totalScore += score;
    setState(() {
      _qindex += 1;
    });

    print(_qindex);
  }

  Widget build(BuildContext context) {
    var question = [
      {
        'qText': 'whats your fav color?',
        'answer': [
          {'text': 'black', 'score': 9},
          {'text': 'blue', 'score': 10},
          {'text': 'red', 'score': 6},
          {'text': 'white', 'score': 7}
        ]
      },
      {
        'qText': 'whats ur fav fruit?',
        'answer': [
          {'text': 'Mango', 'score': 10},
          {'text': 'Custard apple', 'score': 7},
          {'text': 'banana', 'score': 7},
          {'text': 'Strawberry', 'score': 7}
        ]
      },
      {
        'qText': 'whats your player?',
        'answer': [
          {'text': 'Zlatan', 'score': 10},
          {'text': 'Van persie', 'score': 8},
          {'text': 'Messi', 'score': 9},
          {'text': 'Iniesta', 'score': 7}
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("first app"),
        ),
        body: _qindex < question.length
            ? Quiz(question: question, selectHandler: _answerQ, qindex: _qindex)
            : Result(_totalScore,_resetHandler),
      ),
    );
  }
}
