import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalscore;
  final Function resetHandler;
  Result(this.totalscore, this.resetHandler);
  String get resultPhrase {
    var resultText;
    if (totalscore <= 21) {
      resultText = 'You are meh';
    } else if (totalscore <= 25) {
      resultText = 'You are mid';
    } else {
      resultText = 'We are same bruh HMU';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
            disabledForegroundColor: Colors.red.withOpacity(0.38),
          ),
          onPressed: resetHandler,
          child: Text('Restart Quiz'),
        )
      ],
    ));
  }
}
