import 'package:flutter/material.dart';
import 'package:quizapp/constant/colors.dart';
import 'package:quizapp/data/question_list.dart';
import 'package:quizapp/screens/result_screen.dart';
class Intermediate extends StatefulWidget {
  const Intermediate({super.key});

  @override
  State<Intermediate> createState() => _IntermediateState();
}

class _IntermediateState extends State<Intermediate> {
PageController? _controller = PageController(initialPage: 0);
  bool isPressed = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text(
          "Level 02 ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: lettercolor,
          ),
        ),
      ),
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller!,
                onPageChanged: (page) {
                  setState(() {
                    isPressed = false;
                  });
                },
                itemCount: level2.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Question ${index + 1}/${level2.length}",
                          style: const TextStyle(
                            color: lettercolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 38.0,
                          ),
                        ),
                      ),
                      const Divider(
                        color: lettercolor,
                        height: 8.0,
                        thickness: 5.0,
                      ),
                      const SizedBox(height: 30.0,),
                      Text(
                        level2[index].question!,
                        style: const TextStyle(
                          color: lettercolor,
                          fontSize: 20.0,
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      for (int i = 0; i < level2[index].answer!.length; i++)
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 12.0),
                          child: MaterialButton(
                            shape: StadiumBorder(),
                            color: isPressed
                                ? level2[index].answer!.entries.toList()[i].value
                                    ? isTrue
                                    : isWrong
                                : secondColor,
                            padding: const EdgeInsets.symmetric(vertical: 18.0),
                            onPressed: isPressed
                                ? () {}
                                : () {
                                    setState(() {
                                      isPressed = true;
                                    });
                                    if (level2[index].answer!.entries
                                        .toList()[i]
                                        .value) {
                                      score += 10;
                                    }
                                  },
                            child: Text(
                              level2[index].answer!.keys.toList()[i],
                              style: const TextStyle(
                                color: Color(0xFF302B2B),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(height: 30.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: isPressed
                                ? index + 1 == level2.length
                                    ? () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ResultScreen(score),
                                          ),
                                        );
                                      }
                                    : () {
                                        _controller!.nextPage(
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.linear,
                                        );
                                        setState(() {
                                          isPressed = false;
                                        });
                                      }
                                : null,
                            style: OutlinedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: controlbtn,
                            ),
                            child: Text(
                              index + 1 == level2.length
                                  ? "See Result"
                                  : "Next Question",
                              style: const TextStyle(
                                fontSize: 15.0,
                                color: lettercolor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Developed by AsithaSN | © 2024 All Rights Reserved",
              style: TextStyle(
                fontSize: 12,
                color: lettercolor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
  }

  


  
  

