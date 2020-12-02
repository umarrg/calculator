import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.buttumTitle, this.onTap});

  final String buttumTitle;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttumTitle,
          style: kLargebottom,
        )),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 7.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}

class RoundIconButtom extends StatelessWidget {
  RoundIconButtom({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 54.0, height: 54.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
