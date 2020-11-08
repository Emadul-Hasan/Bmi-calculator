import 'dart:math';

import 'package:flutter/cupertino.dart';

class Bmicalculation {
  Bmicalculation({@required this.height, @required this.weight});
  final int height;
  final int weight;
  double bmi;

  String bmicalc() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String bmitext() {
    if (bmi >= 25.0) {
      return 'overweight';
    } else if (bmi > 18.5) {
      return 'normal';
    } else {
      return 'Underweight';
    }
  }

  String advice() {
    if (bmi >= 25.0) {
      return 'You are overweight, Eat less to adjust';
    } else if (bmi > 18.5) {
      return 'Congratulation your weight is normal, Do some exercise to keep yourself fit';
    } else {
      return 'Oh! You\'re underweight, Eat more to be on fitest site';
    }
  }
}
