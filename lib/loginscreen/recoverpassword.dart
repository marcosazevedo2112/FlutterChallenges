import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Recover extends StatefulWidget {
  @override
  _RecoverState createState() => _RecoverState();
}

class _RecoverState extends State<Recover> {
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
                          Text("Recover your password",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w700)),
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
                              "Select credentials wich should we use\nto recover your password",
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
                                          hintText: "Phone",
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent)),
                                          prefixIcon: Icon(Icons.phone)),
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
                                          hintText: "Email",
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent)),
                                          prefixIcon: Icon(Icons.email)),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 15),
                                    child: FlatButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context){
                                            return AlertDialog(
                                              title: Text("Nos enviaremos um email para vocẽ"),
                                              content: Text("Siga os passos descritos na mensagem enviada, caso não encontre, verifique a caixa de spam"),
                                              actions: <Widget>[
                                                FlatButton(
                                                  child: Text("Ok"),
                                                  onPressed: (){
                                                    Navigator.pop(context);
                                                  },
                                                )
                                              ],
                                            );
                                          }
                                        );
                                      },
                                      color: Color(0xFF7B70E6),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 115, vertical: 12),
                                      child: Text(
                                        "Recover",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ))));
  }
}
