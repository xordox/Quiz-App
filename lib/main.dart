import 'package:flutter/material.dart';

import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'See you _ my birthday.',
      'answers': [
        {'text': 'in', 'score': 0},
        {'text': 'on', 'score': 1},
        {'text': 'at', 'score': 0},

      ],
    },
    {
      'questionText': 'Let\'s have a party _ New Year\'s Eve.',
      'answers': [
        {'text': 'in', 'score': 0},
        {'text': 'on', 'score': 1},
        {'text': 'at', 'score': 0},
      ],
    },
    {
      'questionText': 'Do you work _ Mondays?',
      'answers': [
        {'text': 'in', 'score': 0},
        {'text': 'on', 'score': 1},
        {'text': 'at', 'score': 0},
      ],
    },
    {
      'questionText': 'Do you think we will go to Jupiter _ the future?',
      'answers': [
        {'text': 'in', 'score': 1},
        {'text': 'on', 'score': 0},
        {'text': 'at', 'score': 0},
      ],
    },
    {
      'questionText': 'There should be a lot of progress _ the next century.',
      'answers': [
        {'text': 'in', 'score': 1},
        {'text': 'on', 'score': 0},
        {'text': 'at', 'score': 0},
      ],
    },
    {
      'questionText': 'Jane went home _ lunchtime.',
      'answers': [
        {'text': 'in', 'score': 0},
        {'text': 'on', 'score': 0},
        {'text': 'at', 'score': 1},
      ],
    },
    {
      'questionText': 'i read newspaper _ the morning.',
      'answers': [
        {'text': 'in', 'score': 1},
        {'text': 'on', 'score': 0},
        {'text': 'at', 'score': 0},
      ],
    },
    {
      'questionText': 'i read newspaper _ on Saturday mornings.',
      'answers': [
        {'text': 'in', 'score': 0},
        {'text': 'on', 'score': 1},
        {'text': 'at', 'score': 0},
      ],
    },
    {
      'questionText': 'Let\'s meet _ midday _ Saturday.',
      'answers': [
        {'text': 'at, at', 'score': 0},
        {'text': 'in, on', 'score': 0},
        {'text': 'at, on', 'score': 1},
      ],
    },
    {
      'questionText': 'The manager isn\'t here _ present, but she\'ll be back _ half an hour.',
      'answers': [
        {'text': 'at, in', 'score': 1},
        {'text': 'at, on', 'score': 0},
        {'text': 'in, in', 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
   // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grammar I/Q'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore),
      ),
    );
  }
}
