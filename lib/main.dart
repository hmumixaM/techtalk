import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: QuizScreen(),
    );
  }
}
