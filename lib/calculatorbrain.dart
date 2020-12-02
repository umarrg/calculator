import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;
  double _bmi ;

  String calculateBMI() {
     _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >  18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'you have higher than normal body weight, try to exercise more ';
    } else if (_bmi >=18.5) {
      return 'you have a normal body weight , Good job';
    } else {
      return 'you have a lower than body weight, you can eat bit more ';
    }
  }
}
