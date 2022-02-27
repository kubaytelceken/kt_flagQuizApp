import 'package:flutter/material.dart';

class ContinentCardWidget extends StatelessWidget {
  final Color color1;
  final Color color2;

  ContinentCardWidget(
      {required this.color1, required this.color2, required this.cardChild});

  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      width: double.infinity,
      height: 1.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [color1, color2]),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: color1.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
