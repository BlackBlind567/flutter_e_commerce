import 'package:flutter/material.dart';
import 'package:fluttercommercetrymy/screens/signIn.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:splashscreen/splashscreen.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new AppSignIn(),
      title: new Text('Welcome In SplashScreen',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
        ),
      ),
      image: new Image.asset('assets/images/splash.png'),
      gradientBackground: new LinearGradient(colors: [Colors.cyan, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red,
    );
  }
}

//class AfterSplash extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Welcome In SplashScreen Package"),
//        automaticallyImplyLeading: false,
//      ),
//      body: new Center(
//        child: new Text("Succeeded!",
//          style: new TextStyle(
//              fontWeight: FontWeight.bold,
//              fontSize: 30.0
//          ),),
//
//      ),
//    );
//  }
//}
_validateSoomeFunction() {
  Fluttertoast.showToast(
      msg: "we are here",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}