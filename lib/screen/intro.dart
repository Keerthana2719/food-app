import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/screen/log.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
          //fit: StackFit.expand,
          children: [
            Container(
              child: Image.asset(
                  height: MediaQuery.of(context).size.height,
                  "img/ggg.jpg",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.black26],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Brand",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "savor the convenience of restaurent- quality meals,",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  //SizedBox(
                   // height: 8,
                  //),
                  Text(
                    "delivered promptly",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, top: 30, right: 24, bottom: 38),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Log()));
                      },
                      child: Container(
                        height: 54,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(57)),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "NEXT",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
