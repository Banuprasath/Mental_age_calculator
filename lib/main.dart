import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'choose  your favorite Animal?',
      'answers': [
        {'text': 'Wolf ', 'score': 4},
        {'text': 'Giraffe', 'score': 2},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Monkey', 'score': 1},
        {'text': 'Horse', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favorite Sweet?',
      'answers': [
        {'text': 'Choco Cookies', 'score': 2},
        {'text': 'Dark Chocolate ', 'score': 3},
        {'text': 'Cake ', 'score': 5},
        {'text': 'Donut', 'score': 1},
        {'text': 'Indian Sweets', 'score': 4}
      ],
    },
    {
      'questionText': 'Who\'s your fashion Style?',
      'answers': [
        {'text': 'Formal', 'score': 5},
        {'text': 'Trendy', 'score': 2},
        {'text': 'Casual ', 'score': 4},
        {'text': 'Sporty', 'score': 3},
        {'text': 'Null', 'score': 1}
      ],
    },
    {
      'questionText': 'Choose one at a glance?',
      'answers': [
        {'text': 'Triangle', 'score': 3},
        {'text': 'Rhombus', 'score': 5},
        {'text': 'Circle ', 'score': 1},
        {'text': 'Straight Line', 'score': 2},
        {'text': 'Square', 'score': 4}
      ],
    },
    {
      'questionText': 'How important is money to you?',
      'answers': [
        {'text': '0% to 10%', 'score': 1},
        {'text': '10% to 25%', 'score': 2},
        {'text': '25% to 50% ', 'score': 3},
        {'text': '50% to 75%', 'score': 4},
        {'text': '75% to 100%', 'score': 5}
      ],
    },
    {
      'questionText': 'What would you do a raining and lonely day at home?',
      'answers': [
        {'text': 'Sleep', 'score': 5},
        {'text': 'Series/Movies', 'score': 2},
        {'text': 'Listen to songs ', 'score': 4},
        {'text': 'Read Books', 'score': 3},
        {'text': 'Gaming', 'score': 1}
      ],
    },
    {
      'questionText': 'Pick your favorite game?',
      'answers': [
        {'text': 'Basket Ball', 'score': 3},
        {'text': 'Tennis & Badminton ', 'score': 4},
        {'text': 'Cricket ', 'score': 1},
        {'text': 'VolleyBall', 'score': 5},
        {'text': 'Football', 'score': 2}
      ],
    },
    {
      'questionText':
          'Which of the following is your favorite special occasion?',
      'answers': [
        {'text': 'Family anniversaries', 'score': 5},
        {'text': 'Birthday Party', 'score': 1},
        {'text': ' Festivals ', 'score': 2},
        {'text': 'Vacation', 'score': 3},
        {'text': 'Hangout with friends', 'score': 4}
      ],
    },
    {
      'questionText': 'Are you worried about your health?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Hmm, I have regular controls', 'score': 3},
        {'text': 'No more than casual ', 'score': 2},
        {'text': 'Extremely worried', 'score': 5},
        {'text': 'Yes, it is  important', 'score': 4}
      ],
    },
    {
      'questionText': 'What plan you do you prefer during vacations?',
      'answers': [
        {'text': 'Going to Beach', 'score': 1},
        {'text': 'Going for amusement park', 'score': 3},
        {'text': 'Going to museum', 'score': 2},
        {'text': 'city strolling', 'score': 5},
        {'text': 'Motor Home trip', 'score': 4}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      print('we have more question:');
    } else {
      print('no more question:');
    }

    _totalScore += score;
    print(_totalScore);

    /*
    solution 1:
    int b = 0;
    print(_totalScore);
    print(score);
    b += _totalScore = 0 + score;
    print(b);

    var c = 0;
    int b = 0;
    b += score;
    c += b;

    print(c); */

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mental Age Finder'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
