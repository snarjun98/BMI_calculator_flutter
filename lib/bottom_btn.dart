import 'package:flutter/material.dart';
import 'contantss.dart';

class bottom_btn extends StatelessWidget {
  final Function ontap;
  final String botton_title;
  bottom_btn({@required this.ontap,@required this.botton_title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        child: Center(
          child: Text(botton_title,
            style:Ksubmit_style,
          ),
        ),
        color: Kbottom_btn_color,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: Kbottom_btn_height,
      ),
    );
  }
}
