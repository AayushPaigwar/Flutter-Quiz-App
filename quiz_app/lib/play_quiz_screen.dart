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

      //Heading of the appBar
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: backgroundColor),
        backgroundColor: foregroundColor,
        title: Text(
          "Question below",
          style: TextStyle(
            color: backgroundColor,
          ),
        ),
      ),

      //Question
      body: PageView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "1.What is the Capital of Maharashtra?",
                    style: TextStyle(
                        color: foregroundColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //Options of questions
                Column(
                  children: List.generate(
                      4,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: foregroundColor, width: 3),
                                    borderRadius: BorderRadius.circular(10)),
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  "A. Nagpur",
                                  style: TextStyle(
                                    color: foregroundColor,
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
