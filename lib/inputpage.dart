import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card.dart';
import 'icon.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color inactiveCardColour = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateColour(int gender) {
    setState(() {
      if (gender == 1) {
        if (maleCardColour == inactiveCardColour) {
          maleCardColour = activeCardColour;
          femaleCardColour = inactiveCardColour;
        } else {
          maleCardColour = inactiveCardColour;
        }
      } else {
        if (femaleCardColour == inactiveCardColour) {
          femaleCardColour = activeCardColour;
          maleCardColour = inactiveCardColour;
        } else {
          femaleCardColour = inactiveCardColour;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColour(1);
                    },
                    child: CardClass(
                      colour: maleCardColour,
                      cardChild: Iconcard(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColour(2);
                    },
                    child: CardClass(
                      colour: femaleCardColour,
                      cardChild: Iconcard(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardClass(
              colour: inactiveCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardClass(
                    colour: inactiveCardColour,
                  ),
                ),
                Expanded(
                  child: CardClass(
                    colour: inactiveCardColour,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
