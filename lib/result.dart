import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore == -3) {
      resultText = 'All Answers wrong!!.Don\'t Stop your work';
    } else if (resultScore == 30) {
      resultText = 'OHH MY GODDDDDDDD! ALL Questions Right!!!!';
    } else {
      resultText = 'It\'s Okk!! Your Tried.....';
    }
    print(resultScore);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'Itim'),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child: Text(
                'Restart Quiz!',
                style: TextStyle(fontFamily: 'Monst'),
              ),
              textColor: Colors.blue,
              onPressed: resetHandler)
        ],
      ),
    );
  }
}
