import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/about.dart';
import 'pages/skill.dart';

void main() {
  runApp(WebApp());
}

class WebApp extends StatefulWidget {
  @override
  _WebAppState createState() => _WebAppState();
}

class _WebAppState extends State<WebApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _selectedIndex = 0;
  List<Widget> myPages = [
    Home(),
    AboutPage(),
    SkillPage(),
    ProPage(),
  ];
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Send a Word',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Name : ',
                  style: TextStyle(color: Colors.blueGrey),
                ),
                Container(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Emails :',
                style: TextStyle(
                  color: Colors.blueGrey
                ),),
                Container(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Subject : ',
                  style: TextStyle(color: Colors.blueGrey),
                ),
                Container(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Message : ',
                  style: TextStyle(color: Colors.blueGrey),
                ),
                Container(
                  child: TextField(
                    maxLines: 12,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        )),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.limeAccent,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: FlatButton(
                    child: Text('Send'),
                    onPressed: (){},
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: FloatingActionButton(
                    child: Icon(Icons.close),
                    backgroundColor: Colors.limeAccent,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          width: 400,
          color: Color(0xff172724),
        ),
      ),
      body: Center(
        child: myPages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: _selectedIndex == 0 ? Color(0xff172724) : Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('About'),
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.laptop), title: Text('Skills')),
          BottomNavigationBarItem(
              icon: Icon(Icons.mobile_screen_share), title: Text('Projects'))
        ],
        unselectedItemColor: Colors.blueGrey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            _scaffoldKey.currentState.openEndDrawer();
          },
          backgroundColor: Colors.yellowAccent,
          child: Icon(
            Icons.message,
            size: 30,
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}

class ProPage extends StatefulWidget {
  @override
  _ProPageState createState() => _ProPageState();
}

class _ProPageState extends State<ProPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('projects'),
    );
  }
}
