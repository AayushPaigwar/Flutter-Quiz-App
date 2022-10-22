import "package:flutter/material.dart";
import 'package:quiz_app/const.dart';

class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({Key? key}) : super(key: key);

  @override
  State<PlayQuizScreen> createState() => _PlayQuizScreenState();
}

class _PlayQuizScreenState extends State<PlayQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: backgroundColor),
        backgroundColor: foregroundColor,
        title: Text(
          "Play Quiz",
          style: TextStyle(
            color: backgroundColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text(
            "Question",
            style: TextStyle(
              color: foregroundColor,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            width: double.infinity,
          )
        ]),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          height: 60,
          color: foregroundColor,
          alignment: Alignment.center,
          child: Text(
            "Next Question",
            style: TextStyle(
                color: backgroundColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
