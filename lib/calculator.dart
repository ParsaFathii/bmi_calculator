import 'dart:math';

import 'package:flutter/material.dart';

class Calculator {
  final int? height;
  final int? weight;
  double _bmi = 0;

  Calculator({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have normal body weight. please keep it weight.';
    } else {
      return 'You have lower than normal body weight. You should  increase you\'re body weight.';
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }
}
