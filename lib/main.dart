import 'package:flutter/material.dart';
import './question.dart';
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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What\'s your favorite color?",
        "answers": ['Black', "Red", "Blue", "Green"],
      },
      {
        "questionText": "What\'s your favorite animal?",
        "answers": ['Rabbit', "Snake", "Elephant", "Lion"],
      },
      {
        "questionText": "What\'s your favorite instructure?",
        "answers": ['Rabbit', "Snake", "Elephant", "Lion"],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is my first App"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
