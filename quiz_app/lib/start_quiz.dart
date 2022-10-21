import "package:flutter/material.dart";
import 'package:quiz_app/const.dart';
import 'package:quiz_app/play_quiz_screen.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          "Start Quiz",
          style: TextStyle(color: backgroundColor),
        ),
        centerTitle: true,
        backgroundColor: foregroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Quiz App",
              style: TextStyle(
                  color: foregroundColor,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayQuizScreen(),
                    ),
                  );
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: foregroundColor),
                child: Text(
                  "Let's Go!",
                  style: TextStyle(color: backgroundColor),
                ))
          ],
        ),
      ),
    );
  }
}
