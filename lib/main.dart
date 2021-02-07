import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  double rate = 3.14;
  bool isMale = true;
  num temp = 30.5;
  var day = "Tuesday";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),
    debugShowCheckedModeBanner: false,);
  }
}
