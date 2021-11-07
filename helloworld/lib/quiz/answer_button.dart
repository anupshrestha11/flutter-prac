import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String _answer;
  final VoidCallback onPressed;

  AnswerButton(this._answer, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(
          _answer,
          style: TextStyle(color: Colors.black),
        ),
        onPressed: onPressed,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}
