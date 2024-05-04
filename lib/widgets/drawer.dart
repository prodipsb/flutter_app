// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://lh3.googleusercontent.com/proxy/3Hyfl7_5rYdN0rxJ6F6VTdDhL60p-LqXfG4gGNHvJ1cTLaTAeyy_7QpVjWApKV6Njr9FWG2eTapNH-GfFmlDTkcQ7hpLuPyVf_WcyTFofArD9w9jjBpD";

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Prodip Roy"),
                accountEmail: Text("prodip5080@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text(
              "Email Me",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
