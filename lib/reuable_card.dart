import 'package:flutter/material.dart';
import 'constants.dart';

class ReuableCard extends StatelessWidget {
  final Widget? child;
  Color? color;

  ReuableCard({this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color ?? kActiveCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
