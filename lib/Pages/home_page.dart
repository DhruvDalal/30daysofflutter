import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  final int days = 25;
  String name = "Dhruv";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: Center(child: Text("Welcome to $days Days of Flutter, $name")),
      ),
    );
  }
}
