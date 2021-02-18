import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://thumbs.dreamstime.com/b/businessman-profile-icon-male-portrait-flat-design-vector-illustration-47075259.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            padding: EdgeInsets.zero,
      children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Dhruv Dalal"),
              accountEmail: Text("dhruvdalal442002@gmail.com"),
              arrowColor: Colors.red,
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),)
              // Image.network(imageUrl),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.white,),
            title: Text("Home",textScaleFactor: 1.3,style: TextStyle(color: Colors.white),),
            trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.arrow_down_to_line_alt,color: Colors.white,),
            title: Text("Downloads",textScaleFactor: 1.3,style: TextStyle(color: Colors.white),),
            trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
          )
      ],
    ),
        ));
  }
}
