import 'package:flutter/material.dart';
import 'package:quiz_app/View/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game of Quizes',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: welcomeScreen() ,
    );
  }
}
