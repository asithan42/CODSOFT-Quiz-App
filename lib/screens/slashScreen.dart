import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quizapp/constant/colors.dart';
import 'package:quizapp/screens/selectQuestion.dart'; // Import the HomePage class

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 6),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => LevelSelectionScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            mainColor,
            secondColor,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(
                  "assest/images/congratulation.json",
                  height: 350,
                ),
                const SizedBox(height: 5), // Adjusted spacing
                Lottie.asset(
                  "assest/images/loading.json",
                  height: 200,
                ),
                const SizedBox(height: 5), // Adjusted spacing
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
        ),
      ),
    );
  }
}
