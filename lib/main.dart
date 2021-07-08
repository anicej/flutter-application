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
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {"11": "111"},
      {"11": "111"},
      {"11": "111"},
      "22",
      "33"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is my first App"),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
