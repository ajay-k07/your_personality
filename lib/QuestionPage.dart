import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class QuestionPage extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function nextQuestion;

  QuestionPage(this.questions, this.index, this.nextQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        question(questions[index]['questionText']),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((ans) {
          return answer(() => nextQuestion(ans['score']), ans['text']);
        }).toList()
      ],
    );
  }
}
