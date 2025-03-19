import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/bottom_button.dart';
import 'components/reusable_card.dart';
import 'components/icon_container.dart';
import 'constaint.dart';
import 'components/round_icon_button.dart';
import 'components/result_page.dart';

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  int height = 180;
  int weight = 59;
  int age = 20;
  Gender? selectedGender;
  Color maleCardColor = kinactivecardColor;
  Color femaleCardColor = kinactivecardColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour:
                        selectedGender == Gender.male
                            ? kactiveCardColor
                            : kinactivecardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour:
                        selectedGender == Gender.female
                            ? kactiveCardColor
                            : kinactivecardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kinactivecardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text('Height', style: klableTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumberTextStyle),
                      Text('cm', style: klableTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      max: 230,
                      min: 150,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kinactivecardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: klableTextStyle),
                        Text(weight.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              press: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              press: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            )

                          ],
                        )

                      ],
                    ),
                  ),
                ),
                Expanded(child: ReusableCard(colour: kinactivecardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE', style: klableTextStyle),
                      Text(age.toString(), style: kNumberTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            press: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            press: () {
                              setState(() {
                                age--;
                              });
                            },
                          )

                        ],
                      )

                    ],
                  ),)),
              ],
            ),
          ),
          BottomButton(height,weight)
        ],
      ),
    );
  }
}


