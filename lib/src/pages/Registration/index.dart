import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 3),
        ),
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              // decoration: BoxDecoration(border: Border.all(width: 3)),
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Enter your Password'),
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
              // decoration: BoxDecoration(border: Border.all(width: 3)),
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Enter your Password'),
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
              // decoration: BoxDecoration(border: Border.all(width: 3)),
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Enter your Password'),
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
              // decoration: BoxDecoration(border: Border.all(width: 3)),
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Enter your Password'),
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
              // decoration: BoxDecoration(border: Border.all(width: 3)),
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Enter your Last'),
              ),
            ),
          ],
        )
            //  GridView.count(
            //   crossAxisCount: 2,
            //   children: List.generate(10, (generator) {
            //     return Container(
            //         padding: EdgeInsets.all(5),
            //         // decoration: BoxDecoration(border: Border.all(width: 1)),
            //         child: Text("data"));
            //   }),
            // ),
            ),
      ),
    );
  }
}
