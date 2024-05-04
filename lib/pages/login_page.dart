// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myflat/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String password = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/images/login_hey.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be at least 6";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        password = value;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       changeButton = true;
                    //     });
                    //     // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: AnimatedContainer(
                    //     duration: Duration(seconds: 1),
                    //     width: changeButton ? 50 : 150,
                    //     height: 50,
                    //     alignment: Alignment.center,
                    //     decoration: BoxDecoration(
                    //         color: Colors.deepPurple,
                    //         borderRadius: BorderRadius.circular(8)),
                    //     child: Text(
                    //       "login",
                    //       style: TextStyle(
                    //           color: Colors.white,
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 18),
                    //     ),
                    //   ),
                    // ),
                    ElevatedButton(
                        onPressed: () => moveToHome(context),
                        style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                        child: Text("Login"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
