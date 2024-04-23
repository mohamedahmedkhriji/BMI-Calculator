import 'package:flutter/material.dart';

class CardClass extends StatelessWidget {
  const CardClass({
    required this.colour,
    this.cardChild,
    required this.onPress, // Marking onPress parameter as required
  });

  final Color colour;
  final Widget? cardChild;
  final Function onPress; // Making onPress parameter non-nullable

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(), // Wrapping onPress with a lambda function
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
