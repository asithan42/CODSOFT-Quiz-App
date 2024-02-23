import 'package:quizapp/model/question_model.dart';

// Basic Level (Level 1)
List<QuestionModel1> level1 = [
  QuestionModel1(
    "What is the result of 7 + 9?",
    {"14": false, "16": true, "18": false, "20": false},
  ),
  QuestionModel1(
    "If a rectangle has a length of 8 units and a width of 5 units, what is its area?",
    {"35": true, "40": false, "45": false, "50": false},
  ),
  QuestionModel1(
    "What is the product of 6 multiplied by 3?",
    {"15": false, "18": true, "24": false, "30": false},
  ),
  QuestionModel1(
    "What is the next number in the sequence: 3, 6, 9, __?",
    {"12": true, "15": false, "18": false, "21": false},
  ),
  QuestionModel1(
    "If x = 4 and y = 7, what is the value of x - y?",
    {"-3": true, "-1": false, "1": false, "3": false},
  ),
];

// Intermediate Level (Level 2)
List<QuestionModel2> level2 = [
  QuestionModel2(
    "Solve the equation: 2x + 5 = 15",
    {"x = 5": true, "x = 7": false, "x = 10": false, "x = 12": false},
  ),
  QuestionModel2(
    "If a square has a side length of 9 units, what is its perimeter?",
    {"27": false, "36": true, "45": false, "54": false},
  ),
  QuestionModel2(
    "What is the result of 5 squared minus 3?",
    {"21": false, "22": true, "26": false, "28": false},
  ),
  QuestionModel2(
    "If a circle has a diameter of 10 units, what is its radius?",
    {"5": true, "6": false, "7": false, "8": false},
  ),
  QuestionModel2(
    "What is the value of 4 cubed (4^3)?",
    {"64": true, "81": false, "100": false, "125": false},
  ),
];

// Advanced Level (Level 3)
List<QuestionModel3> level3 = [
  QuestionModel3(
    "Simplify the expression: 3(x + 2) - 2(2x - 1)",
    {"x + 7": false, "x + 5": true, "2x + 5": false, "3x + 7": false},
  ),
  QuestionModel3(
    "If a right-angled triangle has legs of length 6 and 8 units, what is the length of the hypotenuse?",
    {"10": true, "12": false, "14": false, "16": false},
  ),
  QuestionModel3(
    "What is the result of (2/3) * 18?",
    {"10": false, "12": false, "14": true, "16": false},
  ),
  QuestionModel3(
    "Solve the equation: 2y - 7 = 11",
    {"y = 9": false, "y = 10": true, "y = 12": false, "y = 14": false},
  ),
  QuestionModel3(
    "If a cone has a radius of 5 units and a height of 8 units, what is its volume? (Use π = 3.14)",
    {"209.33": false, "261.75": true, "314.16": false, "367.58": false},
  ),
];

// Expert Level (Level 4)
List<QuestionModel4> level4 = [
  QuestionModel4(
    "If a box has dimensions of 4 units by 6 units by 9 units, what is its volume?",
    {"216": true, "240": false, "264": false, "288": false},
  ),
  QuestionModel4(
    "Solve the system of equations: \n2x + 3y = 10 \n4x - 2y = 8",
    {"x = 2, y = 2": true, "x = 3, y = 1": false, "x = 1, y = 3": false, "x = 4, y = 0": false},
  ),
  QuestionModel4(
    "What is the result of the following fraction: (3/4) ÷ (2/5)?",
    {"1.25": false, "1.5": true, "1.75": false, "2.0": false},
  ),
  QuestionModel4(
    "The sum of three consecutive even numbers is 72. What are the numbers?",
    {"22, 24, 26": true, "18, 20, 22": false, "26, 28, 30": false, "32, 34, 36": false},
  ),
  QuestionModel4(
    "If a cylindrical tank has a radius of 4 units and a height of 10 units, what is its surface area? (Use π = 3.14)",
    {"301.6": false, "376.8": true, "452.0": false, "527.2": false},
  ),
];

// Master Level (Level 5)
List<QuestionModel5> level5 = [
  QuestionModel5(
    "Evaluate the expression: √(16 + 9) - 2^3",
    {"1": false, "2": true, "3": false, "4": false},
  ),
  QuestionModel5(
    "If log₃(x) = 2, what is the value of x?",
    {"3": false, "6": true, "9": false, "12": false},
  ),
  QuestionModel5(
    "Solve the trigonometric equation: sin(x) = 0.5",
    {"x = π/6": true, "x = π/4": false, "x = π/3": false, "x = π/2": false},
  ),
  QuestionModel5(
    "What is the result of the definite integral: ∫(2x + 3)dx from 1 to 4?",
    {"20": false, "22": false, "24": true, "26": false},
  ),
  QuestionModel5(
    "If a rectangular prism has a length of 7 units, a width of 5 units, and a height of 3 units, what is its volume?",
    {"105": true, "120": false, "135": false, "150": false},
  ),
];