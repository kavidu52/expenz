import 'package:flutter/material.dart';

class Sheardsceens extends StatelessWidget {
  final String imageurl;
  final String Title;
  final String Discription;

  const Sheardsceens({
    super.key,
    required this.imageurl,
    required this.Title,
    required this.Discription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imageurl, width: 250),
        Text(
          Title,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Color(0xff212325),
          ),
        ),
        SizedBox(height: 20),
        Text(
          Discription,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff91919F),
          ),
        ),
      ],
    );
  }
}
