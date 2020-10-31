import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuize;
  final String totaleResult;
  Result({@required this.totaleResult, @required this.resetQuize});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 40,
      margin: EdgeInsets.all(60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text('Your Total Score $totaleResult')),
          RaisedButton(
            onPressed: resetQuize,
            child: Text('Reset Quize'),
          ),
        ],
      ),
    );
  }
}
