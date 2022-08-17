import 'package:flutter/material.dart';
import 'package:vucutkitle/components/BottomButton.dart';
import 'package:vucutkitle/components/resuable_card.dart';

import '../constant.dart';

class ResultPage extends StatelessWidget {
  String cGetResult;
  String cCalculateBMI;
  String CgetInterpration;
  ResultPage({required this.cGetResult, required this.cCalculateBMI, required this.CgetInterpration});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(15.0),
              child: const Text(
                "Your Result",
                style: kResultText,
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: CustomContainer(
              colour: kActiveCardColor,
              widgetVer: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    cGetResult,
                    style: kResultTextStyle,
                  ),
                   Text(
                    cCalculateBMI,
                    style: kBMITextStyle,
                  ),

                   Text(
                    CgetInterpration,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),

                  BottomButton(
                    textGir: "RE-CALCULATE",
                    fonksiyonGir: (){
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          ),

        ]
      ),

      
    );
  }
}