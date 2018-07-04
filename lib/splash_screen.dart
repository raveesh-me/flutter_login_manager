import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  final Route onComplete;
  final Key key;
  SplashScreen({@required this.onComplete, this.key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}
//TODO: Implement replaceCallback method

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  Animation<double> scaleAnimation;
  List<double> list;
  Timer timer;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              controller.reverse();
            }
            if(status == AnimationStatus.dismissed){
              controller.forward();
            }
          });
    animation = Tween(begin: 0.0, end: -pi / 8).animate(controller);
    scaleAnimation = Tween(begin: 0.25, end: 1.0).animate(controller);
    controller.forward();
    timer = Timer(Duration(milliseconds: 2000), (){Navigator.of(context).pushReplacement(widget.onComplete);});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            controller.forward();
          },
          child: Transform.scale(
            scale: scaleAnimation.value,
            child: Transform.rotate(
              child: Center(
                child: Image.asset('assets/images/mayushi.jpg'),
              ),
              angle: animation.value,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
