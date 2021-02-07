import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          child: Center(child: Text("Welcome to 30Days of Flutter")),
        ),
      ),
    );
  }
}
