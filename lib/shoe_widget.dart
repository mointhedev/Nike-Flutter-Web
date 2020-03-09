import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shoe extends StatelessWidget {
  double radius;

  Shoe(this.radius);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2.4,
      width: radius * 2.5,
      child: Stack(
        children: <Widget>[
          Container(
            height: radius * 2,
            width: radius * 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: [
                  const Color.fromRGBO(251, 217, 117, 1),
                  const Color.fromRGBO(244, 176, 47, 1),
                ], // whitish to gray
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.redAccent.withOpacity(0.4),
                  blurRadius: 55.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                  offset: Offset(
                    10.0, // Move to right 10  horizontally
                    10.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
              shape: BoxShape.circle,
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 100, right: 100),
              height: radius * 2.2 + 100,
              width: radius * 2.2,
              child: ClipRRect(
                child: Image.asset(
                  'assets/shoe.png',
                  fit: BoxFit.cover,
                ),
              ))
        ],
      ),
    );
  }
}
