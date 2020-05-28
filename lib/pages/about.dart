import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('assets/img2.jpeg'),
            ),
            SizedBox(height: 40,),
            Center(child: Text('Vinay Kumar',
              textScaleFactor: 4,
              style: TextStyle(
              ),)),
            SizedBox(height: 25,),
            Center(
              child: Text('Student.Flutter.web.\n     Loves Movies',
                textScaleFactor: 2,
                style: TextStyle(
                    color: Colors.blueGrey
                ),),
            ),
            SizedBox(height: 20,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(onPressed:()=> html.window.open('https://github.com/vinay1708','vinay1708'), icon: SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/gh.png'),
                  ), label: Text('GitHub')),
                  FlatButton.icon(onPressed:()=> html.window.open('https://www.linkedin.com/in/vinay-kumar-980257170/','vinay kumar'), icon: SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/li.png'),
                  ), label: Text('LinkedIn')),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(onPressed: null, icon: SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/fb.png'),
                  ), label: Text('Facebook')),
                  FlatButton.icon(
                      onPressed: null, icon: SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/ig.png'),
                  ), label: Text('Instagram')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
