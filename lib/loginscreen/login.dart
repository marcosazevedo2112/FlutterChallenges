import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:challenge/loginscreen/signin.dart';
import 'package:challenge/loginscreen/signup.dart';

class LoginScreenOne extends StatefulWidget {
  @override
  _LoginScreenOneState createState() => _LoginScreenOneState();
}

class _LoginScreenOneState extends State<LoginScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDFE0E4),
      body: Stack(
        children: <Widget>[
          Positioned(
              bottom: 340,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF7B70E6),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15))),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              )),
          Positioned(
            top: 80,
            left: 140,
            child: Icon(
              Icons.brightness_5,
              color: Colors.white,
              size: 80,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 30, left: 10, right: 10, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Welcome to App Name",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 20, right: 10, left: 10, bottom: 20),
                            child: Text(
                              "Discover Amazing Thing Near Around You",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500),
                            )),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          color: Color(0xFF7B70E6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.symmetric(horizontal: 100),
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Color(0xFF7B70E6))),
                          padding: EdgeInsets.symmetric(horizontal: 100),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Color(0xFF7B70E6)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 1,
                                width: 50,
                                color: Colors.grey,
                                margin: EdgeInsets.all(10),
                              ),
                              Text(
                                "Or connect using",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                height: 1,
                                width: 50,
                                color: Colors.grey,
                                margin: EdgeInsets.all(10),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "images/googlepnglogo.png"))),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "images/facebooklogopng.png"))),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
