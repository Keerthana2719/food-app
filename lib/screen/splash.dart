import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food/screen/intro.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {                            
      Navigator.push(context, MaterialPageRoute(builder: (context) => Intro()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center,
          children: [
        Container(
          child: Image.asset(
            width: double.maxFinite,
            "img/gp.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Image.asset(
          "img/Logo.jpg",
          width: double.maxFinite,
        ),
      ]),
    );
  }
}
