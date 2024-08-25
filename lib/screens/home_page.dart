// ignore_for_file: prefer_const_declarations, sort_child_properties_last, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:expense_tracker_mobile/screens/login.dart';
import 'package:expense_tracker_mobile/screens/register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showLogin = true;

  @override
  Widget build(BuildContext context) {
    final imageURL = 'lib/assets/forest_tower.png';

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            imageURL,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(28), //
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: Container(
                  width: 350,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.1),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showLogin = true;
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: showLogin
                                      ? Colors.blue[900]
                                      : Colors.blue[700],
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomLeft: Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: showLogin
                                          ? Colors.grey
                                          : Colors.transparent,
                                      spreadRadius: 7,
                                      blurRadius: 7,
                                      offset: Offset(3, 0),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: showLogin
                                            ? FontWeight.bold
                                            : FontWeight.normal),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showLogin = false;
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: !showLogin
                                      ? Colors.blue[900]
                                      : Colors.blue[700],
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomRight: Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: !showLogin
                                          ? Colors.grey
                                          : Colors.transparent,
                                      spreadRadius: 7,
                                      blurRadius: 7,
                                      offset: Offset(3, 0),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: !showLogin
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50),
                        showLogin ? Login() : Register()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
