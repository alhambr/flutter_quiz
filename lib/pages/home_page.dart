import 'package:flutter/material.dart';
import 'package:flutter_quiz/models/Question.dart';

import '../widgets/answer.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}


class _HomePageState extends State<HomePage> {

  final QuestionDate data = QuestionDate();
  int _countResult = 0;
  int _questionIdex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тестирование'),
      ),
      body: Container(
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
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                data.questions[_questionIdex].title,
                style: Theme.of(context).textTheme.caption,
              ),
            ),

            ...data.questions[_questionIdex].answers.map(
                (value) => Answer(title: value['answer'])
            ).toList(),

            RaisedButton(
              onPressed: () => setState(() => _questionIdex++),
              child: Text('Дальше'),
            ),
          ],
        ),
      ),
    );
  }
}