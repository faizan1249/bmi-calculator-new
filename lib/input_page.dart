import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_code.dart';
import 'result.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? genderSelected;
  double _currentVal = 0.0;

  int weight = 30;
  int age = 10;

  void bmiCalculate()
  {
    double _height = _currentVal.toDouble();
    double _weight = weight.toDouble();

    double bmi_res = 0;

    bmi_res = (_weight/_height/_height)*10000;
    Navigator.push(context, MaterialPageRoute(builder: (context)=> result(bmi_res:bmi_res)));
    print(bmi_res);
  }

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
                      colour: genderSelected == Gender.male
                          ? inactiveCardColor
                          : activeCardColor,
                      icon_box: BoxContent(
                        icon: FontAwesomeIcons.mars,
                        Box_Text: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //2 for female
                        print("Female Card is Selected");
                        // updateColor(Gender.female);
                        genderSelected = Gender.female;
                      });
                    },
                    child: ReuseableContainer(
                        colour: genderSelected == Gender.female
                            ? inactiveCardColor
                            : activeCardColor,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("HEIGHT", style: labelStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          _currentVal.toString(),
                          style: valueStyle,
                        ),
                        Text("CM", style: labelStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0XFFFF0067),
                      ),
                      child: Slider(
                        value: _currentVal,
                        min: 0.0,
                        max: 50.0,
                        divisions: 10,
                        label: _currentVal.toString(),
                        inactiveColor: Colors.grey,
                        onChanged: (double value) {
                          setState(() {
                            _currentVal = value;
                          });
                        },
                      ),
                    ),
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
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 70.0,
                            color: Color(0xFFFEFEFE),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(width: 5.0),
                            RoundedIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableContainer(
                    colour: activeCardColor,
                    icon_box: Column(
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                            color: Color(0xFFA2A3B4),
                            fontSize: 24.0,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 70.0,
                            color: Color(0xFFFEFEFE),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              onPressed: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  }
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(width: 6.0),
                            RoundedIconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
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
                      onPressed:bmiCalculate,
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
