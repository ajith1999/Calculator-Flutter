//import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator {
  String equation;
  Calculator(this.equation);

  String equalButton() {
    String finalequation = equation;
    finalequation = finalequation.replaceAll('x', '*');
    finalequation = finalequation.replaceAll('÷', '/');
    Parser p = Parser();
    Expression exp = p.parse(finalequation);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    if (equation.indexOf('.') == -1)
      return eval.toStringAsFixed(3);
    else
      return eval.toString();
  }

  String percentageButton() {
    String finalequation = equation;
    finalequation = finalequation.substring(0, finalequation.length - 1);
    var eval = double.parse(finalequation);

    eval = eval / 100;

    return eval.toStringAsFixed(3);
  }
}
