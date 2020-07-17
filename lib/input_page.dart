import 'package:bmi_calculator/calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'grid_layout.dart';
import 'icon_card_details.dart';
import 'contantss.dart';
import 'result_page.dart';
import 'package:bmi_calculator/Roundbtn.dart';
import 'bottom_btn.dart';


enum Gender {
  male,
  female
}
int height=180;
int weight=60;
int age =20;
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
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
         Expanded(
           child: Row(
             children: <Widget>[
               Expanded(
                 child: ReusableCard(
                   onpress: (){
                     setState(() {
                       selectedGender=Gender.male;
                     });
                   },
                   color: selectedGender == Gender.male ? Kgrid_card_color : Kinactive_card_color,
                 cardChild: card_details(FontAwesomeIcons.mars,'MALE'),),
               ),
               Expanded(
                 child:ReusableCard(
                   onpress: (){
                     setState(() {
                       selectedGender=Gender.female;
                     });
                   },
                   color:  selectedGender == Gender.female ? Kgrid_card_color : Kinactive_card_color,
                   cardChild: card_details(FontAwesomeIcons.venus,'FEMALE'),

                 ),
               ),
             ],
           ),
         ),
          Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: Ktext_style,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: Knum_stylt,
                        ),
                        Text(
                          'cm',
                          style: Ktext_style,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        activeTrackColor: Colors.white,

                      ),
                      child: Slider(value: height.toDouble(),
                          onChanged:(double newvalue){
                        setState(() {
                          height=newvalue.round();
                        });
                          },
                        max: 270,
                        min: 90,
                      ),
                    )
                  ],
                ),
                color: Kgrid_card_color,)
            ),

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: Ktext_style,
                        ),
                        Text(
                          age.toString(),
                          style: Knum_stylt,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Roundbtn(icon:FontAwesomeIcons.plus,onpressed: (){
                              setState(() {
                                age++;
                              });
                            },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Roundbtn(icon:FontAwesomeIcons.minus,onpressed: (){
                            setState(() {
                              age--;
                            });
                            },
                            )
                          ],
                        ),
                      ],
                    ),
                    color: Kgrid_card_color,),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: Ktext_style,
                        ),
                        Text(
                          weight.toString(),
                          style: Knum_stylt,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Roundbtn(icon:FontAwesomeIcons.plus,onpressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Roundbtn(icon:FontAwesomeIcons.minus,onpressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                            )
                          ],
                        ),
                      ],
                    ),
                    color: Kgrid_card_color,),
                ),
              ],
            ),
          ),
          bottom_btn(ontap:(){
            calculator cal=calculator(height: height,weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Results_page(
              bmiresults: cal.calculate_bmi(),resultText:cal.getResult() ,Interprtation: cal.getInterpretation(),
            )
            ),);},botton_title:'CALCULATE')
        ],
      ),
    );
  }
}

