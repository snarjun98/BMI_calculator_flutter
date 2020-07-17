import 'package:bmi_calculator/contantss.dart';
import 'package:bmi_calculator/grid_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_btn.dart';
import 'input_page.dart';
import 'calculator.dart';

class Results_page extends StatelessWidget {
  Results_page({@required this.bmiresults,@required this.Interprtation,@required this.resultText});
  final String bmiresults;
  final String resultText;
  final String Interprtation;

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
              alignment:Alignment.bottomLeft,
              child:Text(
                'Your Results',
                style: Kresult_heading_text_style,
              ),
            ),
          ),
          Expanded(
              flex:5,
              child:ReusableCard(color: Kgrid_card_color,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(),
                  style: Kresult_text_style,),
                  Text(bmiresults,
                  style: KBMI_text_style,),
                  Text(Interprtation,
                  textAlign: TextAlign.center,
                  style: Kbody_text_style,),

                ],
              ),) ),
          bottom_btn(ontap:(){Navigator.pop(context);},botton_title:'RE-CALCULATE')
        ],
      ),
    );
  }
}
