import 'package:flutter/material.dart';

import 'QuestionPage.dart';
import 'result.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var index = 0;
  var totalscore = 0;
  final question1 = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite Car?',
      'answers': [
        {'text': 'Ferrari', 'score': 3},
        {'text': 'Audi', 'score': 15},
        {'text': 'BMW', 'score': 8},
        {'text': 'Ford', 'score': 12},
      ],
    },
  ];

  // function

  void nextQuestion(int score) {
    setState(() {
      totalscore = totalscore + score;
      if (index < question1.length) {
        index = index + 1;
      } else {
        index = 0;
      }
    });
  }

  void reset() {
    setState(() {
      index = 0;
      totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(' Your Personality',
              style: TextStyle(color: Colors.black, fontSize: 28),
              textAlign: TextAlign.center),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: index < question1.length
                  ? QuestionPage(question1, index, nextQuestion)
                  : Result(reset, totalscore)),
        ),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
