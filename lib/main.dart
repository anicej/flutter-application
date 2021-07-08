import 'package:flutter/material.dart';
import 'package:test2/result.dart';
import './quiz.dart';
import './test2/result.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void resetQiuz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  final _questions = [
    {
      "questionText": "What\'s your favorite color?",
      "answers": [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      "questionText": "What\'s your favorite animal?",
      "answers": [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 6},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Lion', 'score': 1},
      ],
    },
    {
      "questionText": "What\'s your favorite instructure?",
      "answers": [
        {'text': 'Max', 'score': 10},
        {'text': 'Max', 'score': 6},
        {'text': 'Max', 'score': 4},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length)
     _totalScore+=score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is my first App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore,resetQiuz),
      ),
    );
  }
}
