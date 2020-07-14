import 'package:flutter/material.dart';
import '../constants.dart';

const double iconSize = 80;

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.genderText});

  final IconData icon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
