import 'package:flutter/material.dart';
import 'contantss.dart';

Column card_details(IconData icon,String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        icon,
        size: 80,
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        text,
        style: Ktext_style,
      ),

    ],
  );
}