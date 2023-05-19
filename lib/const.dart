import "package:flutter/material.dart";
import 'package:quiz_app/quiz_question.dart';

const foregroundColor = Color.fromRGBO(255, 57, 57, 1);
const backgroundColor = Color.fromARGB(255, 155, 33, 33);

List<QuizQuestionModel> quizQuestion = [
  QuizQuestionModel(
    question: "1.What is the capital of Maharashtra ?",
    correctAnswer: "Mumbai",
    options: ["Nagpur", "Mumbai", "Goa", "Pune"],
  ),
  QuizQuestionModel(
      question: "What is the fullform of VPN ?",
      correctAnswer: "Virtual Private Network",
      options: [
        "Virtual Profile Network",
        "Virtual Private Network",
        "Virtual Permanent Network",
        "None of the above"
      ]),
  QuizQuestionModel(
      question: "2+2", correctAnswer: "4", options: ["1", "2", "3", "4"]),
  QuizQuestionModel(
      question: "2x4", correctAnswer: "8", options: ["2", "4", "6", "8"])
];
