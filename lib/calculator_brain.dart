import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try Creating an exercise plan';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Keep doing what you do.';
    } else
      return 'You have a lower than normal body weight. Try creating a nutrition plan';
  }
}
