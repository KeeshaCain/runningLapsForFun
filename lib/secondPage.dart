
import 'package:flutter/material.dart';

class TimerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );


    Widget bottomButtons;
    bottomButtons = Container (

//TODO Why are the buttons not at the bottom of the screen? Is the code below when I am calling this function causing this?
      child: new Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Expanded(
              child: new RaisedButton(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                splashColor: Colors.deepPurple,
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
                onPressed: (){

//TODO button changes to reset when start is pressed
                },
              ),
            ),
            new Expanded(
              child: new RaisedButton(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  splashColor: Colors.deepPurple,
                child: Text(
                  'Stop',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
                onPressed:(){}
//TODO button changes to lap when start is pressed


              ),
            ),
          ],
        ),
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'Hello',
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: ListView(
          children: [
//            Image.asset(
//              'images/lake.jpg',
//              width: 600.0,
//              height: 240.0,
//              fit: BoxFit.cover,
//            ),
            titleSection,
            textSection,
            bottomButtons,
          ],
        ),
      ),
    );
  }
}

