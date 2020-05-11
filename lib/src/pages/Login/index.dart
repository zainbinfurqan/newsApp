import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height * 1,
      // decoration: BoxDecoration(border: Border.all(width: 3)),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.35,
          // decoration: BoxDecoration(border: Border.all(width: 3)),
          child: Column(
            children: <Widget>[
              Container(
                // decoration: BoxDecoration(border: Border.all(width: 3)),
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Enter your Email'),
                ),
              ),
              Container(
                // decoration: BoxDecoration(border: Border.all(width: 3)),
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Enter your Password'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 45,
                  child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Center(
                        child: Text("Login"),
                      )))
              // const SizedBox(
              //   height: 20,
              // ),
              // ButtonTheme(
              //   minWidth: 300.0,
              //   height: 50.0,
              //   buttonColor: Colors.blueAccent,
              //   child: RaisedButton(
              //     textColor: Colors.white,
              //     onPressed: () {},
              //     child: const Text('Login', style: TextStyle(fontSize: 20)),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ));
  }
}
