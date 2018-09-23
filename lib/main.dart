import 'package:flutter/material.dart';
import 'timer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Lap Counter',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new WelcomeScreen(title: 'Lap Counter'),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomeScreenState createState() => new _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.4, 0.9],
            colors: [
              Colors.orange[900],
              Colors.purple[700],
            ],
          ),
        ),
        child: new Center(

          child: new Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Press to begin',
                style: new TextStyle(fontSize: 30.0),

              ),
              new FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TimerScreen()),
                  );
                },
                child: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}














