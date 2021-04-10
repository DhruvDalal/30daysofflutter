import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  final int days = 30;
  String name = "Dhruv";
  @override
  Widget build(BuildContext context) {
    final dumyList = List.generate(20, (index) => catalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dumyList[index],
              );
            },
          ),
        ));
  }
}
