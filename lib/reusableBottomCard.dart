import 'package:flutter/material.dart';
import 'roundIconButton.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableBottomCard extends StatelessWidget {
  ReusableBottomCard({
    required this.text,
    required this.number,
    required this.onPlusPressed,
    required this.onMinusPressed,
  });

  final String text;
  final int number;
  final VoidCallback onPlusPressed;
  final VoidCallback onMinusPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: kLabelTextStyle),
        Text(number.toString(), style: kNumberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: onMinusPressed,
            ),
            SizedBox(width: 10.0),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: onPlusPressed,
            ),
          ],
        ),
      ],
    );
  }
}
