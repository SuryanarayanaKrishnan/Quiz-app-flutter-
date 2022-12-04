import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function selectHandler;
  final int qindex;
  Quiz(
      {@required this.question,
      @required this.selectHandler,
      @required this.qindex});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(question[qindex]['qText']),
      ...(question[qindex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => selectHandler(answer['score']), answer['text']);
      }).toList(),
    ]);
  }
}
