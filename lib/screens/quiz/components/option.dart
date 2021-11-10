import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

class Option extends StatefulWidget {
  Option({this.text, this.index});
  final String text;
  final int index;

  @override
  State<StatefulWidget> createState() {
    QuestionController qnController = Get.put(QuestionController());;
    return _Option(text: text, index: index, qnController: qnController);
  }
}

class _Option extends State<Option> {
  _Option({this.text, this.index, this.qnController});
  final String text;
  final int index;
  final QuestionController qnController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        qnController.checkAns(index);
        setState(() {});
        },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${index + 1}. $text",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: getTheRightColor() == Colors.grey
                    ? Colors.transparent
                    : getTheRightColor(),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: getTheRightColor()),
              ),
              child: getTheRightColor() == Colors.grey
                  ? null
                  : Icon(getTheRightIcon(), size: 16),
            )
          ],
        ),
      ),
    );
  }

  Color getTheRightColor() {
    if (qnController.isAnswered) {
      if (index == qnController.correctAns) {
        return Colors.green;
      } else if (index == qnController.selectedAns &&
          qnController.selectedAns != qnController.correctAns) {
        return Colors.red;
      }
    }
    return Colors.grey;
  }

  IconData getTheRightIcon() {
    return getTheRightColor() == Colors.grey ? Icons.close : Icons.done;
  }
}
