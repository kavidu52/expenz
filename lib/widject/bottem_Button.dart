import 'package:flutter/material.dart';

class BottemButton extends StatelessWidget {
  final String button_name;
  final Color butto_collor;

  const BottemButton({
    super.key,
    required this.button_name,
    required this.butto_collor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: butto_collor,
      ),
      child: Center(
        child: Text(
          button_name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
