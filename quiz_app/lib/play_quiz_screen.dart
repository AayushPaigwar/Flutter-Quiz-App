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
    );
  }
}
