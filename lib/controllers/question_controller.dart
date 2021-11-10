import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:quiz_app/models/Questions.dart';

class QuestionController {
  List<Question> _questions = data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      ).toList();
  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _correctAns;
  int get correctAns => this._correctAns;

  int _selectedAns;
  int get selectedAns => this._selectedAns;

  // for more about obs please check documentation
  int _questionNumber = 0;
  int get questionNumber => this._questionNumber;

  void checkAns(int selectedIndex) {
    _isAnswered = true;
    _correctAns = questions[_questionNumber].answer;
    _selectedAns = selectedIndex;
  }

  Function onChange;

  void addListener(Function onChange) {
    this.onChange = onChange;
  }

  void nextQuestion() {
    _isAnswered = false;
    _questionNumber++;
    onChange();
  }
}
