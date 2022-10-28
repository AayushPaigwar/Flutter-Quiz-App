import "package:flutter/material.dart";
import 'package:quiz_app/const.dart';
import 'package:quiz_app/quiz_question.dart';
import 'package:quiz_app/result.dart';

class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({Key? key}) : super(key: key);

  @override
  State<PlayQuizScreen> createState() => _PlayQuizScreenState();
}

class _PlayQuizScreenState extends State<PlayQuizScreen> {
  //To go-to next page
  final PageController pageController = PageController();

  //To keep the selected answer hhighlighted
  bool isAnswerLocked = false;

  //To store the selected answers, correct answer etc
  int currentIndex = 0, correctAnswers = 0, wrongAnswers = 0;
  String correctAnswer = " ", selectedAnswer = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      //Heading of the appBar
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: foregroundColor,
        title: Text(
          "Question below",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      //Question
      body: PageView.builder(
          //Page-view for multile pages/slides
          //To go-to next page
          controller: pageController,

          //Not to swipe to next quesiton/page
          physics: NeverScrollableScrollPhysics(),

          //Number of pages/questions
          itemCount: quizQuestion.length,
          itemBuilder: (context, index) {
            //to call the question model
            QuizQuestionModel model = quizQuestion[index];
            //-
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    model.question,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //Options of questions
                Column(
                  children: List.generate(
                      model.options.length,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: InkWell(
                              //InkWell Provides on Tap function
                              onTap: () {
                                // Set State used to get instant change from the user input

                                setState(() {
                                  isAnswerLocked = true; //to lock answer
                                  correctAnswer = model.correctAnswer;
                                  selectedAnswer = model.options[index];
                                });
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 3),
                                    color:
                                        //If Selected ans. is == to options then pass(?) foreground otherwise(:) bg color
                                        selectedAnswer == model.options[index]
                                            ? foregroundColor
                                            : backgroundColor,
                                    borderRadius: BorderRadius.circular(10)),
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  model.options[index], //call option list
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          )),
                )
              ]),
            );
          }),

      // Next question Button
      bottomNavigationBar: InkWell(
        //InkWell Provides on Tap function
        onTap: () {
          if (isAnswerLocked) {
            if (selectedAnswer == correctAnswer) {
              correctAnswers++;
            } else {
              wrongAnswers++;
            }

            currentIndex++; //for navigating to next page

            if (currentIndex != quizQuestion.length) {
              selectedAnswer = "";
              pageController.jumpToPage(currentIndex);
            } else {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Result(
                          correctAnswer: correctAnswers,
                          wrongAnswer: wrongAnswers)),
                  (route) => false);
            }

            print("Correct Answers= $correctAnswers");
            print("Wrong Answer = $wrongAnswers");
          } else {
            (print("Please select option"));
          }
        },
        child: Container(
          height: 60,
          color: foregroundColor,
          alignment: Alignment.center,
          child: Text(
            "Next Question",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
