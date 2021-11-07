import 'package:flutter/material.dart';
import 'package:helloworld/quiz/answer_button.dart';
import 'package:helloworld/quiz/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _questionIndex = 0;
  var _question = ["What is your name?", "What is your age?"];
  void onPressed() {
    setState(() {
      _questionIndex + 1 == _question.length
          ? _questionIndex = 0
          : _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anup Shrestha"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(_question[_questionIndex]),
            AnswerButton("Click Here", onPressed),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
