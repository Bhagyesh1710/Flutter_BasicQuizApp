import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const value never change in compile time also never change in runtime
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text':'Red','Score':10},
        {'text':'Green','Score':5},
        {'text':'Blue','Score':8},
        {'text':'White','Score':9},
        ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text':'Dog','Score':5},
        {'text':'Cat','Score':4},
        {'text':'Tiger','Score':3},
        {'text':'Lion','Score':2},
        ],
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        {'text':'Puspa','Score':1},
        {'text':'Matrix','Score':7},
        {'text':'SpiderMan No Way Home','Score':8},
        {'text':'KGF','Score':11},
        ],
    },
    {
      'questionText': 'What\'s your favorite music?',
      'answers': [
        {'text':'New Collections','Score':20},
        {'text':'Old Collections','Score':5},
        {'text':'Both','Score':6},
        ],
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });

  }

  void _answerQuestion(int score) {
  _totalscore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {

    }
  }


  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // // dummy.add('Max');
    // print(dummy);
    // _questions=[]; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ?Quiz(
            answerQuestion:_answerQuestion,questionIndex:_questionIndex,questions:_questions
        )
            : Result(_totalscore,_resetQuiz),
      ),
    );
  }
}