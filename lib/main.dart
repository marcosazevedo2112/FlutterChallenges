import 'package:flutter/material.dart';
import 'package:challenge/loginscreen/login.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return _HomeState();
  }
}

void main() => runApp(MaterialApp(
      home: Home(),
      title: "Flutter Challenge",
    ));

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Challenges"),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginScreenOne()));
                },
                child: Text("Login Screen One"),
              )
            ],
          ),
        ));
  }
}
