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
      question: "Question2 ",
      correctAnswer: "2",
      options: ["1", "2", "3", "4"]),
  QuizQuestionModel(
      question: "Question3", correctAnswer: "1", options: ["1", "2", "3", "4"]),
  QuizQuestionModel(
      question: "Question4", correctAnswer: "3", options: ["1", "2", "3", "4"])
];
