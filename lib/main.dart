import 'package:flutter/material.dart';

void main() {
  runApp(SLDevTalksApp());
}

class SLDevTalksApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _SLDevTalksAppState createState() => _SLDevTalksAppState();
}

class _SLDevTalksAppState extends State<SLDevTalksApp> {
  bool isDark = false;

  void toggleDarkMode(bool newState) {
    setState(() {
      isDark = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: semh(),);
  }
}

class semh extends StatefulWidget {
  const semh({Key key}) : super(key: key);

  @override
  _semhState createState() => _semhState();
}

class _semhState extends State<semh> {

  var semh = 00;

  void increase(){
    setState(() {
      semh++;
    });
    print('$semh');
  }

  void decrease(){
    setState(() {
      semh--;
    });
    print('$semh');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sss'),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(100),
            padding: EdgeInsets.only(left: 70),
            child: Text('$semh', style: TextStyle(
              fontSize: 100,
            ),),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: FloatingActionButton(
              onPressed: increase,
              child: Icon(Icons.add),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FloatingActionButton(
              onPressed: decrease,
              child: Icon(Icons.minimize),
            ),
          )
        ],

      ),

    );
  }
}
