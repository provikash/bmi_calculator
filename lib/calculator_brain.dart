import 'dart:math';

class CalculatorBrain{



  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double? _BmiResult;

  String calculateBMI (){

    _BmiResult=weight / pow(height/100,2);
    return _BmiResult!.toStringAsFixed(1);
  }

  String getResult() {
    if (_BmiResult! >= 25) {
      return 'Overweight';
    } else if (_BmiResult! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_BmiResult !>= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_BmiResult! >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}