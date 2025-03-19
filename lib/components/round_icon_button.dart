import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback press;

  RoundIconButton({required this.icon, required this.press});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      onPressed: press,
      child: Icon(icon), // Use `child` to display the icon
    );
  }
}