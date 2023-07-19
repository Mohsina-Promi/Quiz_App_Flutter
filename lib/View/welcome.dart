import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

class welcomeScreen extends StatefulWidget {

  @override
  _welcomeScreenState createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homePage(),

      ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "Game of Quizes",
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.w800,
            color: Colors.black87,
            fontFamily: "Satisfy",
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

