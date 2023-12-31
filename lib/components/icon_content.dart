import 'package:flutter/material.dart';
import 'package:project_flutter/pages/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({
    required this.icon,
    required this.label,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
