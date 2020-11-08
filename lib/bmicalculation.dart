import 'dart:math';
import 'package:flutter/cupertino.dart';

class Bmicalculation {
  Bmicalculation({@required this.height, @required this.weight});
  final int height;
  final int weight;
  double bmi;

  String reqweight;
  double act;
  double minbmi = 18.5;
  double maxbmi = 25.0;

  double bmicalc() {
    bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String weightlose() {
    if (bmi > 25) {
      act = ((bmi - maxbmi) * pow(height / 100, 2));
      reqweight = act.toStringAsFixed(1);
      return 'You need to lose $reqweight kg of weight';
    } else if (bmi < 18.5) {
      act = ((minbmi - bmi) * pow(height / 100, 2));
      reqweight = act.toStringAsFixed(1);
      return 'You need to add $reqweight kg of weight';
    } else {
      return 'Don\'t lose your shape!';
    }
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
      return 'You are overweight, Do some exercise.';
    } else if (bmi > 18.5) {
      return 'Congratulation your weight is normal, Do some exercise to keep yourself fit';
    } else {
      return 'Oh! You\'re underweight. Eat more!';
    }
  }
}
