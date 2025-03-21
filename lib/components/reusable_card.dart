import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Function? onPress;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress != null ? () => onPress!() : null,
      child: Container(

        child: cardChild ?? SizedBox(),
        margin: EdgeInsets.all(15.0),
        decoration:
        BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0)
        ),
        ),
    );
  }
}


