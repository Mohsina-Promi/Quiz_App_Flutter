import 'package:flutter/material.dart';

class homePage extends StatefulWidget {

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<String> images = [
    "images/java.png",
    "images/python.png",
    "images/js.png",
    "images/c.png",
    "images/c++.png",
  ];

  Widget customCard(String language, String image){
  return Padding(
      padding: EdgeInsets.all(20.0),
    child: InkWell(
      onTap: (){
        debugPrint('Card Tapped');
      },
      child: Material(
        color: Colors.lightBlue,
        elevation: 10.0,
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(100.0),
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  child: ClipOval(
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
              ),
              Center(
                child: Text(language,
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "Quando",
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                )
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text("Let's check your JAVA skill",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: "Alike",
                    color: Colors.grey[800],
                  ),
                  maxLines: 5,
                  textAlign: TextAlign.justify,
                ) ,
              )

              ],
          ),
        ),
      ),
    ),
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game of Quizes"),
      ),
      body: ListView(
        children: <Widget>[
          customCard("Java", images[0]),
          customCard("Python", images[1]),
          customCard("JavaScript", images[2]),
          customCard("C", images[3]),
          customCard("C++", images[4]),
        ],
      ),


    );
  }
}
