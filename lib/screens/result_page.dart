import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/reusable_container.dart';
import '../components/ReusableBottombutton.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {@required this.score, @required this.result, @required this.advice});
  final String score;
  final String result;
  final String advice;

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
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: KResultpagetextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusablecontainer(
              colour: KReusablecolor,
              reusablechild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result,
                    style: KResultTexttop,
                  ),
                  Text(
                    score,
                    style: KResultnumber,
                  ),
                  Text(
                    advice,
                    style: KResulttextbottom,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Bottombutton(
              buttontext: 'Re-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
