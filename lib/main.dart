import 'package:basicapp/quize.dart';
import 'package:basicapp/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quize App"),
        ),
        body: QuizeApp(),
      ),
    );
  }
}

class QuizeApp extends StatefulWidget {
  @override
  _QuizeAppState createState() => _QuizeAppState();
}

class _QuizeAppState extends State<QuizeApp> {
  final _question = [
    {
      'questionText': 'What is my number',
      'Answers': [
        {'answerText': 'One', 'socre': 10},
        {'answerText': 'Two', 'socre': 60},
        {'answerText': 'Foure', 'socre': 90},
        {'answerText': 'Three', 'socre': 30},
      ]
    },
    {
      'questionText': 'What is my Favourite Color',
      'Answers': [
        {'answerText': 'Hash', 'socre': 10},
        {'answerText': 'purple dark', 'socre': 60},
        {'answerText': 'dark', 'socre': 90},
        {'answerText': 'black', 'socre': 30},
      ]
    },
    {
      'questionText': 'What is my career goal',
      'Answers': [
        {'answerText': 'Developer', 'socre': 10},
        {'answerText': 'Programmer', 'socre': 60},
        {'answerText': 'Polisce', 'socre': 90},
        {'answerText': 'Coustom', 'socre': 30},
      ]
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void resetQuize() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _questionAnswere(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _questionIndex < _question.length
        ? Quize(
            question: _question,
            questionIndex: _questionIndex,
            questionAnswere: _questionAnswere)
        : Result(
            totaleResult: _totalScore.toString(),
            resetQuize: resetQuize,
          );
  }
}
