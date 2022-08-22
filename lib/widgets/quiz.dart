import 'package:flutter/material.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  final index;
  final questinData;
  final onChangeAnswer;


  Quiz({Key? key, this.index, this.questinData, this.onChangeAnswer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            questinData.questions[index].title,
          ),
        ),

        ...questinData.questions[index].answers.map(
            (value) => Answer(
              title: value['answer'],
              isCorrect: value.containsKey('isCorrect') ? true : false,
              onChangeAnswer: onChangeAnswer,
            )
        ).toList(),
      ],
    );
  }
}
