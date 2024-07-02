import 'package:flutter/material.dart';
import 'package:food/screen/menu.dart';
import 'package:food/screen/signup.dart';
import 'package:food/text/tx.dart';

import '../widget/button.dart';
import 'intro.dart';

class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  bool secure = true;
  bool isChecked = false;

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 52,
        ),
        child: Container(
          child: Center(
              child: Image.asset(
            "img/Logo.jpg",
            width: 121,
            height: 121,
          )),
        ),
      ),
      Center(
          child: Text(
        "Sign in your account",
        style: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
      )),
      Padding(
        padding: const EdgeInsets.only(
          left: 25,
          top: 20,
        ),
        child: Text(
          "Email",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14),
        ),
      ),

            Textf(name:"Placeholder",),
      Padding(
        padding: const EdgeInsets.only(left: 25, top: 15),
        child: Text(
          "Password",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14),
        ),
      ),
     Textf(name: "password",ob: true, ),
      SizedBox(height: 18,),
                  Button(name: 'Sign in',child: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));

                  },),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            "Forget password?",
            style: TextStyle(
                color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 115,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "or continue with",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(width: 6),
            Container(width: 115, height: 1, color: Colors.grey),
          ],
        ),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 25),
          child: Container(
            width: 154,
            height: 51,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Image.asset(
                  "img/10464408.jpg",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
                Text(
                  "Facebook",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 25, right: 20),
          child: Container(
              width: 154,
              height: 51,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "img/google.jpg",
                    height: 22,
                    width: 22,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Google",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )),
        ),
      ]),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child:GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));

            },
            child: Text(
              "Sign up",
              style: TextStyle(
                  color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w500),
            ),
          )
          )
        ],
      )
    ])));
  }
}
