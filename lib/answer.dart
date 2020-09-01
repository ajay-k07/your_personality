import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final String answerText;
  final Function nextQuestion;

  answer(
    this.nextQuestion,
    this.answerText,
  );

  String answerString;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
        ),
        RaisedButton(
          elevation: 10,
          padding: EdgeInsets.all(10),
          splashColor: Colors.amber,
          child: Text(answerText),
          onPressed: nextQuestion,
        ),
      ],
    );
  }
}
