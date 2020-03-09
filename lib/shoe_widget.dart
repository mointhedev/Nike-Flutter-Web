import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shoe extends StatelessWidget {
  double radius;

  Shoe(this.radius);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 180, right: 100),
        height: radius * 2.1,
        width: radius * 2.1,
        child: ClipRRect(
          child: Image.asset(
            'assets/shoe.png',
            fit: BoxFit.contain,
          ),
        ));
  }
}
