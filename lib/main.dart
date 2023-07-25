import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/Controller/quiz_provider.dart';
import 'package:quiz_app/View/questions.dart';
import 'package:quiz_app/View/quizpage.dart';
import 'package:quiz_app/View/welcome.dart';
import 'package:quiz_app/View/home.dart';


void main() => runApp(MultiProvider(providers: [

  ChangeNotifierProvider(create: (context) => QuizProvider(),)
],child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game of Quizes',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
     initialRoute: WelcomeScreen.routeName,

      routes: {
        QuestionPage.routeName: (questions) => QuestionPage(),
        QuizesPage.routeName: (quizes) => QuizesPage(),
        HomePage.routeName: (homescreen) => HomePage(),
        WelcomeScreen.routeName: (welcomepage) => WelcomeScreen(),
        //GetJson.routeName: (jsonfiles) => GetJson(),
      },
    );
  }
}
