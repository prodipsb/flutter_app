// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myflat/models/catalog.dart';
import 'package:myflat/widgets/home_widgets/catalog_header.dart';
import 'package:myflat/widgets/home_widgets/catalog_list.dart';
import 'package:myflat/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final catalogDecode = jsonDecode(catalogJson);
    var itemData = catalogDecode['products'];

    CatalogModel.items =
        List.from(itemData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(4, (index) => CatalogModel.items[0]);

    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CatalogHeader(),
                  if (CatalogModel.items.isNotEmpty)
                    CatalogList().expand().py16().expand()
                  else
                    CircularProgressIndicator().centered().py16().expand()
                ],
              )),
        ));
  }
}
