import 'package:flutter/material.dart';

// void main() {
//   runApp(MyCoolApp());
// }

// If the function just one line code:
void main() => runApp(MyCoolApp());

class MyCoolApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The questions'),
            // answerQuestion: No '()'
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(
                onPressed: () => print('Answer 2 chosen!'),
                child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  // ...
                  print('Answer 3 chosen!');
                },
                child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
