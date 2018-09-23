import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.4, 0.8],
            colors: [
              Colors.orange[900],
              Colors.purple[700],
            ],
          ),
        ),
        child: new Center(
          child: new Row(
            children: <Widget>[
              Expanded(
                child: new FloatingActionButton(
                  heroTag: null,
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: new FloatingActionButton(
                  heroTag: null,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
