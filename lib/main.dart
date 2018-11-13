import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Quicksand',
      ),
      // home: MyHomePage(title: 'Madguys Home Page'),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) =>
            new MyHomePage(title: 'mAd GuYs')
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  double _height = 100.0;
  double _width = 100.0;
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new InkWell(
      onTap: () {},
      child: new Center(
          child: new ClipOval(
              child: Container(
        decoration: new BoxDecoration(
            color: Colors.purple,
            gradient:
                new RadialGradient(colors: [Colors.black12, Colors.black26])),
        width: _height,
        height: _width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'mad',
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87),
            ),
            Text(
              'guys',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87),
            ),
          ],
        ),
      ))),
    ));
  }

  dispose() {
    super.dispose();
  }
}
