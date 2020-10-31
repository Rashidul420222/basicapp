import 'package:flutter/material.dart';
import './answere.dart';
import './question.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function questionAnswere;

  Quize(
      {@required this.question,
      @required this.questionIndex,
      @required this.questionAnswere});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Question(question[questionIndex]['questionText']),
        ...(question[questionIndex]['Answers'] as List<Map<String, Object>>)
            .map((e) =>
                Answere(() => questionAnswere(e['socre']), e['answerText']))
            .toList(),
      ],
    );
  }
}
