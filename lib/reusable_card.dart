import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // Constructor with required named param
  ReusableCard({@required this.colour, this.cardChild, this.onPress});
  // Properties of this class
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
