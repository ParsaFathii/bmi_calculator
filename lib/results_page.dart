import 'package:bmi_calculator/Bottom_Button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String? bmiResult , resultText  , interpretation;
  ResultsPage({required this.bmiResult , required this.resultText , required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Result Page',
        ),
        backgroundColor: Color(0xFF0A0D22),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText!,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult!.toUpperCase(),
                    style: kBmiTextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        'Normal BMI Range',
                        style: kGrayBodyTextStyle,
                      ),
                      Text(
                        '18.5 - 25 kg/m2',
                        style: kBodyTextStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      interpretation!,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(title: 'RE-CALCULATE', onTap: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
