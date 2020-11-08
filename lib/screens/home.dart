import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_container.dart';
import '../components/reusablecontent.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/ReusableBottombutton.dart';
import '../bmicalculation.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  int height = 160;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablecontainer(
                    gesturetap: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    reusablechild: Reuseablecontent(
                      mainicon: FontAwesomeIcons.mars,
                      maintext: 'MALE',
                    ),
                    colour: selectedGender == GenderType.male
                        ? KReusablecolor
                        : KStartingcolor,
                  ),
                ),
                Expanded(
                  child: Reusablecontainer(
                    gesturetap: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    reusablechild: Reuseablecontent(
                      mainicon: FontAwesomeIcons.venus,
                      maintext: 'FEMALE',
                    ),
                    colour: selectedGender == GenderType.female
                        ? KReusablecolor
                        : KStartingcolor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusablecontainer(
              colour: Color(0xFF272A4E),
              reusablechild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: KTextfontsize),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: KNumberfontsize,
                          fontWeight: KNumberfontweight,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: KTextfontsize,
                        ),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      thumbColor: Color(0xFFFE0167),
                      overlayColor: Color(0x52FE0167),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newheight) {
                          setState(() {
                            height = newheight.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablecontainer(
                    reusablechild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: KTextfontsize,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: KNumberfontsize,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              internalicon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              internalicon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: Color(0xFF272A4E),
                  ),
                ),
                Expanded(
                  child: Reusablecontainer(
                    reusablechild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: KTextfontsize,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: KNumberfontsize,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              internalicon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              internalicon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: Color(0xFF272A4E),
                  ),
                ),
              ],
            ),
          ),
          Bottombutton(
              buttontext: 'CALCULATE',
              onTap: () {
                Bmicalculation calc =
                    Bmicalculation(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultpage(
                      score: calc.bmicalc(),
                      result: calc.bmitext(),
                      advice: calc.advice(),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.internalicon, @required this.onPressed});

  final IconData internalicon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(
        internalicon,
      ),
    );
  }
}
