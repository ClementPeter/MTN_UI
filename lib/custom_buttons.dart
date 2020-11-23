import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  CustomButtons({this.text, this.colour, this.size});

  final String text;
  final Color colour;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('clicked');
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: size,
              letterSpacing: 1.0,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
