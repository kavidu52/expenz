import 'package:flutter/material.dart';

class Fist extends StatelessWidget {
  const Fist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/logo.png", width: 150),
        Text(
          "Expenz",
          style: TextStyle(
            color: Color(0xff7F3DFF),
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ],
    );
  }
}
