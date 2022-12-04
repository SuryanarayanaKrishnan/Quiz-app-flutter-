import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qText;
  Question(this.qText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(qText,
          style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
    );
  }
}
