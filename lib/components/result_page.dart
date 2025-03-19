import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constaint.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    required this.result,
    required this.resultText,
    required this.interpretation,
  }) {}
  final String result;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('YOUR RESULT', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(result.toString(), style: kResultTextStyle),
                  Text(
                    resultText,
                    textAlign: TextAlign.center,
                    style: kBMITEXTSTYLE,
                  ),
                  Text(interpretation, style: kBodyTextStyle),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },

            child: Container(
              child: Center(
                child: Text('RE-CALCULATE', style: kLargeButtonTextStyle),
              ),
              width: double.infinity,
              color: kbottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: kbottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
