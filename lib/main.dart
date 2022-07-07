import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(const QuizzlerApp());
}

class QuizzlerApp extends StatelessWidget {
  const QuizzlerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 36, 36),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  
  List <Icon> reviewIcons =[];

  // List <String> questions = [
  //   'Ya pero eres o no eres?',
  //   'Te estas recogiendo?',
  //   'No lo hag'
  // ];

  // List <bool> answers = [
  //   true,
  //   false,
  //   true,
  // ];

  List <Question> questionsBank = [
    Question(question: '¿Hawaii forma parte de EEUU?', answer: true),
    Question(question: '¿EEUU tiene 51 estados?', answer: false),
    Question(question: '¿El rio Ebro es el mas largo del mundo?', answer: false),
    Question(question: '¿La segunda guerra mundial acabo en 1945?', answer: true),
  ];

  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              questionsBank[questionIndex].question,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                bool correctAnswer = questionsBank[questionIndex].answer;
                if(correctAnswer == true){
                  print('Lo hizo bn pana rabit');
                } else {
                  print('Se equivoco pana rabit');
                }
                setState(() {
                  questionIndex++;
                });
              },
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                bool correctAnswer = questionsBank[questionIndex].answer;
                if(correctAnswer == false){
                  print('Lo hizo bn pana rabit');
                } else {
                  print('Se equivoco pana rabit');
                }
                setState(() {
                  questionIndex++;
                });
              },
              child: const Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row()
      ],
    );
  }
}
