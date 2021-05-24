import 'package:flutter/material.dart';
import 'package:calculator/calc.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {

    return MaterialApp(
      title: "New Calculator",
      home: Scaffold(
        appBar: AppBar(
          elevation: 50,
          title: Text(
            "Calculator",
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 36,
               fontFamily: "MyFavourite",
               letterSpacing: 3,
              ),
          ),
          backgroundColor: Colors.black87,
          centerTitle: true,
          shadowColor: Colors.black,
        ),
        body: Center(
          child: Calc(),
        ),
      )
    );
  }

}

