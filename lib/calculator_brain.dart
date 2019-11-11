import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Acima do peso";
    } else if (_bmi > 18.5){
      return "Normal";
    } else {
      return "Abaixo do peso";
    }
  }

  String getInterpretation() {
    return "";
  }
}