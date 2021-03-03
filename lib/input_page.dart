
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xff1B2440);
const bottomContainerColor=Colors.greenAccent;
const bottomContainerHeigth=80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(color: activeCardColor,),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor,),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: activeCardColor,),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: activeCardColor,),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor,),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeigth,
            margin: EdgeInsets.only(top:10.0),
            width: double.infinity,
          )
        ],
      )

    );
  }
}

class ReusableCard extends StatelessWidget {

    final Color color;
    ReusableCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: activeCardColor,//el color tiene que estar dentro de Decoration
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(FontAwesomeIcons.male, size:80.0, ),
          SizedBox(height: 10.0,),
          Text("Male",style: TextStyle(fontSize: 20.0)),
        ],
      ),
    );
  }
}