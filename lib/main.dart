// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:myflat/pages/home_page.dart";
import "package:myflat/pages/login_page.dart";
import "package:myflat/utils/routes.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
