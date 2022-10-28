import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';
import 'package:quiz_app/start_quiz.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  //to store the dynamic(correct,wrong ans.) value in result...
  int correctAnswer, wrongAnswer;
  Result({Key? key, required this.correctAnswer, required this.wrongAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: foregroundColor,
        title: (Text("Result")),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answerTab("Correct Answer", correctAnswer),
                answerTab("Wrong Answer", wrongAnswer),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => StartQuizScreen()),
                    (route) => false);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: Text(
                "Reset Quiz",
                style: TextStyle(
                    color: backgroundColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//to use siglecode for 2 times by creating widget
Widget answerTab(String title, int value) {
  return Column(
    children: [
      Text(
        title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
      ),
      Text(
        "$value",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 70),
      ),
    ],
  );
}
