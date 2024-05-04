// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:myflat/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Home";

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        // backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to My $name Flutter App"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
