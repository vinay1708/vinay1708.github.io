import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('assets/img1.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,),
        Scaffold(

          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Hello I\'m,',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        AutoSizeText('VINAY KUMAR',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 92,
                            //fontSize: 92,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        TypewriterAnimatedTextKit(
                            onTap: () {
                              print("Tap Event");
                            },
                            speed: Duration(milliseconds: 400),
                            text: [
                              "<CODER>",
                              "STUDENT",
                              "FLUTTER DEVELOPER",
                              "WEB DEVELOPER",
                            ],
                            textStyle: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                            alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
