import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;

  BottomButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      child: Center(
      child: Text(
      title!,
      style: kLargeButtonTextStyle,
    ),
    ),
    margin: EdgeInsets.only(top: 10),
    color: kBottomContainerColor,
    width: double.infinity,
    height: kBottomContaninerHeight,
    ),
    );
  }
}