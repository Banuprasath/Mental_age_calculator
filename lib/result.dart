import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    //String t;

    if (resultScore >= 10 && resultScore <= 17) {
      resultText =
          ' You are Mental age is from 5 to 12 years old 👶 \n\n 1)Your Personality is childish and joyfull.  \n 2)You are full of energy and enthusiasm. \n 3)You may be little bit self-centred'
          '\n4)To develop a fulfilled life you should try to be more conscious about everything is around you(But without losing your joy';
    } else if (resultScore >= 18 && resultScore <= 28) {
      resultText =
          ' You are mental age is from 13 to 20 \n\n 1)You are mix between fun and responsibility.  \n2)You are conscious of your responsibilities but you dont always feel like fulfilling them. \n 3)'
          'That may cause changes in your mood ';
    } else if (resultScore >= 29 && resultScore <= 34) {
      resultText =
          ' You are mental age is from 21 to 35 \n\n 1)Your personality is in its way of being a consolidated adult personality. \n 2)you are discovering what is good for you. '
          '\n3)you are serious and responsible when you have to... \n **But you know how to have fun too**';
    } else if (resultScore >= 35 && resultScore <= 50) {
      resultText =
          ' You are mental age is from 36 to 50 \n\n You think as an adult. \n1) You are responsible and have a pretty complete list of priorities. \n2)Stability and security are important to you.'
          '\n3)Your obligations have a fundamental role in your life (but dont forget to have fun :)';
    } else {
      //print(resultScore);
      resultText = 'Test failed $resultScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontFamily: 'Arial', fontSize: 25, fontWeight: FontWeight.bold),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.orange,
              side: BorderSide(color: Colors.orange),
            ),
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
