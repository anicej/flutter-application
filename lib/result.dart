import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
final Function() resetHandler;
  Result(this.resultScore,this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore <= 8)
      resultText = 'Awsome';
    else if (resultScore <= 12)
      resultText = "likable";
    else if (resultScore <= 16)
      resultText = "Strange";
    else
      resultText = "bad";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children:<Widget> [
        Text(resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,),
    FlatButton(child: Text("reset"), onPressed: resetHandler)
    ]),);
  }
}
