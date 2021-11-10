import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

import 'question_card.dart';

class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Body();
  }
}

class _Body extends State<Body> {

  int _questionNum = 0;

  void changeQuestion() {
    setState(() {
      _questionNum += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    _questionController.addListener(changeQuestion);
    return Stack(
      children: [
        SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Question ${_questionController.questionNumber+1}/${_questionController.questions.length}",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: 20),
              QuestionCard(question: _questionController.questions[_questionNum])
            ],
          ),
        )
      ],
    );
  }
}
