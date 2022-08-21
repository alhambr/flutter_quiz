import 'package:flutter/foundation.dart';

class Question {

  final String title;
  final List<Map> answers;

  Question({required this.title, required this.answers});



}

class QuestionDate {
  final _data = [
    Question(
        title: 'Выбери цифру, шаг1?',
        answers: [
          {'answer': '1',},
          {'answer': '2',},
          {'answer': '3', 'isCorrect': 1},
          {'answer': '4',},
        ]
    ),
    Question(
        title: 'Выбери цифру, шаг2?',
        answers: [
          {'answer': '1',},
          {'answer': '2',},
          {'answer': '3', 'isCorrect': 1},
          {'answer': '4',},
        ]
    ),
    Question(
        title: 'Выбери цифру, шаг3?',
        answers: [
          {'answer': '1',},
          {'answer': '2', 'isCorrect': 1},
          {'answer': '3',},
          {'answer': '4',},
        ]
    ),
    Question(
        title: 'Выбери цифру, шаг4?',
        answers: [
          {'answer': '1',},
          {'answer': '2',},
          {'answer': '3',},
          {'answer': '4', 'isCorrect': 1},
        ]
    ),
    Question(
        title: 'Выбери цифру, шаг5?',
        answers: [
          {'answer': '1',},
          {'answer': '2',},
          {'answer': '3'},
          {'answer': '4','isCorrect': 1},
        ]
    ),
  ];

  List<Question> get questions => [..._data];


}