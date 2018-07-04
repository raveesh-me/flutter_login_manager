import 'package:flutter/material.dart';
import 'package:flutter_login_manager/splash_screen.dart';
import 'package:flutter_login_manager/model/login_info.dart';
import 'package:flutter_login_manager/model/login.dart' as loginManager;
import 'package:flutter_login_manager/home_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  LoginInfo loginInfo;
  bool inProgress = true;

  @override
  void initState() {
    super.initState();
    loginManager.login().then((newLoginInfo){
      setState(() {
        loginInfo = newLoginInfo;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        onComplete: MaterialPageRoute(
      builder: (BuildContext context) => MaterialApp(
            title: 'Flutter Demo',
            theme: new ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: new MyHomePage(title: 'Flutter Demo Home Page'),
          ),
    ));
  }
}


