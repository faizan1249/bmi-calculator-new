import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'input_page.dart';
import 'reuseable_code.dart';


class result extends StatelessWidget {
  result(
  {
    required this.bmi_res,
  }
  );
  double bmi_res;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
          elevation: 4.0,
        ),
        body: Column(
          children: <Widget>[
            Row
              (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(30.0),
                  child:Text("YOUR RESULT",
                    style: TextStyle(
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],

            ),
            Expanded(
              child: Container(
                color: Color(0xFF14193B),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(padding: EdgeInsets.all(20.0),),
                              Text("NORMAL",
                              style: TextStyle(
                                color: Color(0xFF20A363),
                                fontSize: 24.0,
                              ),),
                              Text(bmi_res.toString(),
                              style: TextStyle(
                                fontSize: 82.0,
                                fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 30.0,),

                              Text("NORMAL BMI Range:",
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                              ),


                              Text("18,5 - 25 kg/m2",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(height: 30.0,),

                              SizedBox(height: 20.0,),
                              Text("YOU HAVE A NORMAL BODY",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFF474658),
                                ),
                              ),
                              Text(" WEIGHT. GOOD JOB",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: TextButton(
                                    onPressed: (){},
                                    child: Text(
                                      "SAVE RESULT",
                                      style: TextStyle(
                                        fontSize: 24.0,
                                        color:Color(0xFFEFEFEF),
                                        fontWeight: FontWeight.normal
                                    ),

                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xFF181A2E),
                                      padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                                    )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                    
                  ),
                  
                ),
                margin: EdgeInsets.all(30.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}


