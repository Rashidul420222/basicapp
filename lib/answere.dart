import 'package:flutter/material.dart';

class Answere extends StatelessWidget {
  final Function selectHendelaer;
  final answerText;
  Answere(this.selectHendelaer, this.answerText);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(answerText),
      onPressed: selectHendelaer,
    );
  }
}
