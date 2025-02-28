import 'package:expenz1/onbord_screen/onbord_scrren.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //theme: ThemeData(fontFamily: "Inter"),
      title: "expenz",
      home: OnbordScrren(),
    );
  }
}
