import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/Questions.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    @required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: UniqueKey(),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            question.question,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
            ),
          ),
        ],
      ),
    );
  }
}
