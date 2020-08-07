import 'package:flutter/material.dart';

import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:bmi_calculator_flutter/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpration});
  final String bmiResult;
  final String resultText;
  final String interpration;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpration,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  BottomButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      buttonTitle: 'RE-CALCULATE')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
