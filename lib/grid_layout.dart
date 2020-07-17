import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  final Color color;
  ReusableCard({@required this.color,this.cardChild,this.onpress});
  final Widget cardChild;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}