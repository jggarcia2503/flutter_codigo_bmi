import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/icon_content.dart';
import 'package:flutter_codigo_bmi/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xff152954);
const bottomContainerColor = Colors.greenAccent;
const inactiveCardColor = Color(0xff1B2440);
enum Gender {
  male,
  female,
  other,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: selectedGender==Gender.male ? activeCardColor : inactiveCardColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.mars ,text: "MALE",),
                      onPress: (){
                        selectedGender=Gender.male;
                        setState(() {
                        });
                      },
                    ),
                    ),
                  Expanded(
                    child: ReusableCard(
                      color: selectedGender==Gender.female ? activeCardColor : inactiveCardColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.venus,text: "FEMALE",),
                      onPress: (){
                        selectedGender=Gender.female;
                        setState(() {
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              height: bottomContainerHeigth,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
            )
          ],
        ),
    );
  }
}





