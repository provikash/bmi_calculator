import 'package:flutter/material.dart';
import 'package:bmi_calculator/constaint.dart';
import 'result_page.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class BottomButton extends StatelessWidget{

  final int height;
  final int weight;

  BottomButton(this.height,this.weight);
  @override
  Widget build(BuildContext context) {

   return GestureDetector(
      onTap: (){

        CalculatorBrain cal = CalculatorBrain(height: height, weight: weight);

        Navigator.push(context,MaterialPageRoute(
            builder: (context)=> ResultPage(
          result: cal.calculateBMI() ,resultText:cal.getResult() ,interpretation:cal.getInterpretation() ,
        )));
      },
      child: Container(
        child: Center(
          child: Text('CALCULATE',
            style: kLargeButtonTextStyle,),
        ),
        width: double.infinity,
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kbottomContainerHeight,
      ),
    );

  }


}