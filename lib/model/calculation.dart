import 'dart:math';

import 'package:project_flutter/model/person.dart';

class Calculation {
  Calculation(
      {required this.height,
      required this.weight,
      required this.age,
      required this.gender});

  final double height;
  final double weight;
  final int age;
  final Gender gender;
  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String result() {
    if (_lowWeight())
      return 'Abaixo do Peso';
    else if (idealWeight())
      return 'Peso Ideal';
    else if (_littleOverweight())
      return 'Pouco acima do Peso';
    else if (_overweight())
      return 'Acima do Peso';
    else
      return 'Obesidade';
  }

  String interpretation() {
    if (_lowWeight())
      return 'Você tem um peso corporal menor que o normal. Você pode comer um pouco mais.';
    else if (idealWeight())
      return 'Você tem um peso corporal normal. Bom trabalho.';
    else if (_littleOverweight())
      return 'Você tem um peso corporal um pouco acima do Peso. Tome cuidado';
    else if (_overweight())
      return 'Você tem um peso corporal maior que o normal. Tente se exercitar mais.';
    else
      return 'Você tem um peso corporal obeso. Consulte seu médico.';
  }

  bool _isYoung() {
    return age < 19;
  }

  bool _isMale() {
    return gender == Gender.male;
  }

  bool _isFemale() {
    return gender == Gender.female;
  }

  bool _lowWeight() {
    if (_isYoung() && _bmi < 18.5)
      return true;
    else if (_isMale() && _bmi < 20.7)
      return true;
    else if (_isFemale() && _bmi < 19.1)
      return true;
    else
      return false;
  }

  bool idealWeight() {
    if (_isYoung() && (_bmi >= 18.5) && (_bmi < 25))
      return true;
    else if (_isMale() && (_bmi >= 20.7) && (_bmi < 26.5))
      return true;
    else if (_isFemale() && (_bmi >= 19.1) && (_bmi < 25.9))
      return true;
    else
      return false;
  }

  bool _littleOverweight() {
    if (_isYoung() && (_bmi >= 25) && (_bmi < 30))
      return true;
    else if (_isMale() && (_bmi >= 26.5) && (_bmi < 28))
      return true;
    else if (_isFemale() && (_bmi >= 25.9) && (_bmi < 27.4))
      return true;
    else
      return false;
  }

  bool _overweight() {
    if (_isYoung() && (_bmi >= 30) && (_bmi < 40))
      return true;
    else if (_isMale() && (_bmi >= 28) && (_bmi < 31.2))
      return true;
    else if (_isFemale() && (_bmi >= 27.4) && (_bmi < 32.4))
      return true;
    else
      return false;
  }

  bool _obese() {
    if (_isYoung() && (_bmi >= 40.0))
      return true;
    else if (_isMale() && (_bmi >= 31.2))
      return true;
    else if (_isFemale() && (_bmi >= 32.4))
      return true;
    else
      return false;
  }
}
