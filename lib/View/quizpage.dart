import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:quiz_app/View/quizpage.dart';


class QuizesPage extends StatefulWidget {
  static const String routeName='/quizes';
  const QuizesPage({super.key});

  @override
  State<QuizesPage> createState() => _QuizesPageState();
}

class _QuizesPageState extends State<QuizesPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



class GetJson extends StatefulWidget {
  static const String routeName='/jsonfiles';
  const GetJson({super.key});

  @override
  State<GetJson> createState() => _GetJsonState();
}

class _GetJsonState extends State<GetJson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: QuizesPage(),
    );
  }
}

class Quizpage extends StatefulWidget {
  var mydata;
  Quizpage({Key? key, required this.mydata}) : super(key: key);

  @override
  _QuizpageState createState() => _QuizpageState(mydata);
}

class _QuizpageState extends State<Quizpage> {
  var mydata;
  _QuizpageState(this.mydata);
  Color showcolor = Colors.blue;
  Color right = Colors.green;
  Color wrong = Colors.red;
  Color hello = Colors.black;


  // void anscheck(String option){
  //   if(mydata[1]["1"] == true){
  //
  // }

  Widget choicebutton(String option) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: MaterialButton(
        onPressed: () {},
        child: Text(mydata[1]["1"][option],
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Alike",
            fontSize: 16.0,
          ),),
        color: Colors.blue,
        splashColor: Colors.indigo[800],
        highlightColor: Colors.indigo[900],
        minWidth: 200.0,
        height: 45.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return showDialog(
              context: context,
              builder: (context) =>
                  AlertDialog(
                    title: Text(
                      "Quizstar",
                    ),
                    content: Text("You Can't Go Back At This Stage."),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text(
                          'Ok',
                        ),
                      )
                    ],
                  )).then((value) => value ?? false);
        },


        child: Scaffold(
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(20.0),
                  child: Text( mydata[0]["1"],
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w300,
                    ),),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],

                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      choicebutton('a'),
                      choicebutton('b'),
                      choicebutton('c'),
                      choicebutton('d'),
                    ],
                  ),

                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Center(
                    child: Text("30",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}

