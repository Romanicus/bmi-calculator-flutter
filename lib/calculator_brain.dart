import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 30) {
      return 'Fettleibig';
    } else if (_bmi >= 25) {
      return 'Übergewichtig';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Untergewichtig';
    }
  }

  String getInterpretation() {
    if (_bmi > 30) {
      return 'WOW. DU BIST SO FETT!!!';
    } else if (_bmi >= 25) {
      return 'Du bist FETT';
    } else if (_bmi > 18.5) {
      return 'Passt schon';
    } else {
      return 'Futter mal was.';
    }
  }
}
