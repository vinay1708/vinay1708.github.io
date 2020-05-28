import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillPage extends StatefulWidget {
  @override
  _SkillPageState createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Color(0xff333333),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 21,
                      child: Icon(
                        Icons.star,
                        color: Color(0xffC9E6FF),
                        size: 35,
                      )),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'SPECIALITIES',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.shade100,
              thickness: 2,
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 21,
                    child: Icon(
                      Icons.android,
                      color: Color(0xffC9E6FF),
                      size: 35,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
