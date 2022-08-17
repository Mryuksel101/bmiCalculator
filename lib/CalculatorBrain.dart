import 'dart:math';


class CalculatorBrain{

  int cHeight;
  int cWeight;

  CalculatorBrain({required this.cHeight, required this.cWeight});
  double _bmi=0;
  String calculateBMI(){
    _bmi = cWeight / pow(cHeight/100, 2);
    // cm'yi m'ye çevirmek için 100 ile böldük
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25){
      print(_bmi);
      return "OVERWEIGHT";
    }
    
    else if(_bmi>18.5){
      print(_bmi);
      return "NORMAL";
    }

    else{
      print(_bmi);
      return "UNDERWEIGHT";
    }
  }

  String getInterpration(){
    if(_bmi>=25){
      return "You have a higher than normal body weight. Try to exercise more.";
    }
    
    else if(_bmi>18.5){
      return "You have a normal body weight. Good joj";
    }

    else{
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  } 



}