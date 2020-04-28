import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // Constructor with required named param
  ReusableCard({@required this.colour, this.cardChild});
  // Properties of this class
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
