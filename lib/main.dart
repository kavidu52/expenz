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
      home: Scaffold(
        body: Center(child: Text("Hello flutter", style: TextStyle())),
      ),
    );
  }
}
