import 'package:flutter/material.dart';
import 'dart:async';


class CreateTimer extends StatefulWidget{
  @override
  _CreateTimerState createState() => new _CreateTimerState();
}

class _CreateTimerState extends State<CreateTimer>{

  Stopwatch watch = new Stopwatch();
  Timer timer;

  String elapsedTime = '';

  updateTime(Timer timer){
    if(watch.isRunning){

      setState(() {
        elapsedTime = transformMilliSeconds(watch.elapsedMilliseconds);
      });
    }
  }

  @override
  Widget build(BuildContext context){

    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new Text(elapsedTime, style: new TextStyle(fontSize:25.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
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
                    onPressed: startWatch,

//TODO button changes to reset when start is pressed,
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
                      onPressed: stopWatch,
//TODO button changes to lap when start is pressed


                  ),
                ),
              ]
            ),
          ],
        ),
      )
    );
  }

  startWatch() {
    watch.start();
    timer = new Timer.periodic(new Duration(milliseconds: 100), updateTime);
  }

  stopWatch() {
    watch.stop();
  }

  resetWatch() {
    watch.reset();
    setTime();
  }

  setTime(){
    var timeSoFar = watch.elapsedMilliseconds;
    setState(() {
      elapsedTime = transformMilliSeconds(timeSoFar);
    });
  }

  transformMilliSeconds(int milliseconds) {
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    String hundredsStr = (hundreds % 100).toString().padLeft(2, '0');

    return "$minutesStr:$secondsStr:$hundredsStr";
   }


}

