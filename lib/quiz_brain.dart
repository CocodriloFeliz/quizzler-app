import 'question.dart';

class QuizBrain{
  int _questionIndex = 0;
  final List <Question> _questionsBank = [
    Question(question: '¿Hawaii forma parte de EEUU?', answer: true),
    Question(question: '¿EEUU tiene 51 estados?', answer: false),
    Question(question: '¿El rio Ebro es el mas largo del mundo?', answer: false),
    Question(question: '¿La segunda guerra mundial acabo en 1945?', answer: true),
    Question(question: '¿EEUU tiene 51 estados?', answer: false),
    Question(question: '¿El rio Ebro es el mas largo del mundo?', answer: false),
    Question(question: '¿La segunda guerra mundial acabo en 1945?', answer: true),
    Question(question: '¿EEUU tiene 51 estados?', answer: false),
    Question(question: '¿El rio Ebro es el mas largo del mundo?', answer: false),
    Question(question: '¿La segunda guerra mundial acabo en 1945?', answer: true),
  ];

  void nextQuestion(){
    if(_questionIndex < _questionsBank.length -1){
      _questionIndex++;
    }
  }

  String getQuestion(){
    return _questionsBank[_questionIndex].question;
  }

  bool getAnswer(){
    return _questionsBank[_questionIndex].answer;
  }

  bool isFinal(){
    if(_questionIndex >= _questionsBank.length -1 ){
      return true;
    } else {
      return false;
    }
  }

  void reset(){
    _questionIndex = 0;
  }
}

