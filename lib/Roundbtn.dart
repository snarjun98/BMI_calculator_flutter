import 'package:flutter/material.dart';

class Roundbtn extends StatelessWidget {
  Roundbtn({@required this.icon,@required this.onpressed});
  final IconData icon;
  final Function onpressed;
  @override

  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4f5E),

    );
  }
}
