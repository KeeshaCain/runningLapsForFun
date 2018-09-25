import 'package:flutter/material.dart';

class ButtonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonDemoState();
  }
}

class ButtonDemoState extends State<ButtonDemo> {
  int number = 0;

  void subtractNumbers() {
    setState(() {
      number = number - 1;
    });
  }

  void addNumbers() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                '$number',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 160.0,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ));
  }
}