
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consttants.dart';

class TwoSlideRounedButton extends StatelessWidget {
  final String text;
  final double radious;


  const TwoSlideRounedButton({
    super.key,
    required this.text,
    this.radious = 29,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        width: 115,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radious),
                bottomRight: Radius.circular(radious))),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}