import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/View/home.dart';
import 'package:quiz_app/home.dart';


class WelcomeScreen extends StatefulWidget {
  static const String routeName='/welcomepage';
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}



class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      //Navigator.of(context).pushReplacement(MaterialPageRoute(
       // builder: (context) => HomePage(),
      Navigator.pushNamed(context, HomePage.routeName);

      //));
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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

