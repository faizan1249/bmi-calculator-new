import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_code.dart';


enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? genderSelected = null;


  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  /*void updateColor(Gender genderVar)
  {


    //if 1 = male
    if(genderVar == Gender.male)

      {
        if(maleCardColor == inactiveCardColor)
          {
            maleCardColor = activeCardColor;
            femaleCardColor = inactiveCardColor;
          }
        else
          {
            maleCardColor = inactiveCardColor;


          }
      }
    //2 = Female
    if(genderVar == Gender.female)
      {
        if(femaleCardColor == inactiveCardColor)
          {
            femaleCardColor = activeCardColor;
            maleCardColor = inactiveCardColor;
          }
        else
          {
            femaleCardColor = inactiveCardColor;
          }
      }
  }
*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelected = null;
                        print("male Card is Selected");
                        genderSelected = Gender.male;
                      });
                    },
                    child: ReuseableContainer(
                      colour: genderSelected == Gender.male?
                      inactiveCardColor:
                      activeCardColor,

                      icon_box: BoxContent(
                        icon: FontAwesomeIcons.mars,
                        Box_Text: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        //2 for female
                        print("Female Card is Selected");
                        // updateColor(Gender.female);
                        genderSelected = Gender.female;
                      });
                    },
                    child: ReuseableContainer(
                        colour: genderSelected == Gender.female?
                        inactiveCardColor:activeCardColor,

                        icon_box: BoxContent(
                          icon: FontAwesomeIcons.venus,
                          Box_Text: "FEMALE",
                        )),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: ReuseableContainer(
                colour: activeCardColor,
                icon_box: Column(

                  children: <Widget>[
                    Text("HEIGHT",
                    style: labelStyle),
                    Row(
                      children: <Widget>[
                        Text("100",
                        style: valueStyle,),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReuseableContainer(
                    colour: activeCardColor,
                    icon_box: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            color: Color(0xFFA2A3B4),
                            fontSize: 24.0,
                          ),
                        ),
                        Text(
                          "74",
                          style: TextStyle(
                            fontSize: 70.0,
                            color: Color(0xFFFEFEFE),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableContainer(
                    colour: activeCardColor,
                  ),
                ),
              ]),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 60,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Calculate Your BMI",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => BtnColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

//Reuseable Container Card
