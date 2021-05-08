import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 10.0, 10, 0.0),
          padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
          width: double.infinity,
          child: RaisedButton(
            textColor: Colors.white,
            elevation: 5.0,
            color: Colors.grey[500],
            child: Text(
              answerText,
              style: TextStyle(fontFamily: 'Itim', fontSize: 20),
            ),
            onPressed: selectHandler,
          ),
        ),
      ],
    );
  }
}
