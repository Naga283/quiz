import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which country are the Giza Pyramids in?',
      'answers': [
        {
          'text': 'New York',
          'score': -1,
        },
        {'text': 'Egypt', 'score': 10},
        {'text': 'India', 'score': -1},
        {'text': 'Russia', 'score': -1}
      ]
    },
    {
      'questionText': 'How many Cricket world cups does India have?',
      'answers': [
        {'text': '3', 'score': -1},
        {'text': '1', 'score': -1},
        {'text': '2', 'score': 10},
        {'text': '5', 'score': -1}
      ]
    },
    {
      'questionText': ' Highest dam of India is?',
      'answers': [
        {'text': 'Tehri Dam', 'score': 10},
        {'text': 'Mettur Dam', 'score': -1},
        {'text': 'Kariba Dam', 'score': -1},
        {'text': 'Guri Dam', 'score': -1}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.grey[500],
            title: Text(
              'Basic Quiz',
              style: TextStyle(fontFamily: 'Itim'),
            ),
            centerTitle: true,
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz),
        ));
  }
}
