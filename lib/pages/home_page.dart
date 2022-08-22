import 'package:flutter/material.dart';
import 'package:flutter_quiz/models/Question.dart';
import 'package:flutter_quiz/widgets/progress_bar.dart';
import 'package:flutter_quiz/widgets/quiz.dart';
import 'package:flutter_quiz/widgets/result.dart';

import '../widgets/answer.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}


class _HomePageState extends State<HomePage> {

  final QuestionDate data = QuestionDate();
  int _countResult = 0;
  int _questionIdex = 0;

  List<Icon> _icons= [];

  void _clearState() => setState(() {
    _countResult = 0;
    _questionIdex = 0;
    _icons = [];
  });

  void _onChangeAnswer(bool isCorrect) => setState(() {
    if(isCorrect) {
      _icons.add(Icon(Icons.brightness_1, color: Color(0xFFBD27FF)));
      _countResult++;
    } else {
      _icons.add(Icon(Icons.brightness_1, color: Color(0xFF000000)));
    }
    _questionIdex++;
  });

  final whiteTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Тестирование'),
      // ),
      body: SafeArea(
        child: DefaultTextStyle.merge(
          style: whiteTextStyle,
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              color: Color(0xFF2A375A),
              image: DecorationImage(
                image: AssetImage('assets/images/cec76c721e511a93a6a65ac083582350.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[

                ProgressBar(
                  icons: _icons,
                  count: _questionIdex,
                  total: data.questions.length,
                ),

                _questionIdex < data.questions.length
                ?
                Quiz(
                  index: _questionIdex,
                  questinData: data,
                  onChangeAnswer: _onChangeAnswer,
                )
                :
                Result(
                  count: _countResult,
                  total: data.questions.length,
                  onClearState: _clearState
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}