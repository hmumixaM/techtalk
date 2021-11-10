import 'package:flutter/cupertino.dart';

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List data = [
  {
    "id": 1,
    "question":
    "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['print', 'console.log', 'cout', 'all of above'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "What widget cannot change its state?",
    "options": ['StatelessWidget', 'StatefulWidget', 'InheritedWidget'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "quesion": "StatefulWidget can change its state by what function?",
    "options": ['update', 'changeState', 'onStateChange', 'setState'],
    "answer_index": 3,
  },
];
