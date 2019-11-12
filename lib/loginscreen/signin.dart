import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'recoverpassword.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF7B70E6),
          elevation: 0,
          title: Icon(
            Icons.brightness_5,
            size: 30,
          ),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFDFE0E4),
        body: SingleChildScrollView(
            child: SizedBox(
                height: MediaQuery.of(context).size.height - 150,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF7B70E6),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Sign In",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w700
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                              "Sign In to discover amazing thing near\naround you",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 95,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width - 50,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 30, left: 10, right: 10, bottom: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 45,
                                    width:
                                        MediaQuery.of(context).size.width - 90,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFDFE0E4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Email",
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent)),
                                          prefixIcon: Icon(Icons.email)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    height: 45,
                                    width:
                                        MediaQuery.of(context).size.width - 90,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFDFE0E4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: TextField(
                                      obscureText: true,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent)),
                                          prefixIcon: Icon(Icons.vpn_key)),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 15),
                                    child: FlatButton(
                                      onPressed: () {},
                                      color: Color(0xFF7B70E6),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 115, vertical: 12),
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.only(top: 7),
                                      child: Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                            color: Color(0xFF7B70E6),
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.push(context, CupertinoPageRoute(
                                        builder: (context)=>Recover()
                                      ));
                                    },
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      top: 350,
                      child: Column(
                        children: <Widget>[
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
                          Card(
                            margin: EdgeInsets.only(top: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Row(
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
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
