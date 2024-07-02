import 'package:flutter/material.dart';
import 'package:food/screen/log.dart';
import 'package:food/screen/menu.dart';
import 'package:food/text/tx.dart';

import '../widget/button.dart';
import 'intro.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  bool secure = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  bool sc = true;

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 52),
            child: Container(
                child: Center(
              child: Image.asset(
                "img/Logo.jpg",
                fit: BoxFit.cover,
                height: 121,
                width: 121,
              ),
            )),
          ),
          Center(
            child: Text(
              "Sign up your account",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              "Email",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Textf(name: "plaa",),

          /*Padding(
            padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.deepPurpleAccent[10],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  hintText: "Placeholder"),
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 15),
            child: Text(
              "Password",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25, top: 5, right: 25),
              child: TextField(
                controller: passwordController,
                obscureText: secure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.deepPurpleAccent[10],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          secure = !secure;
                        });
                      },
                      icon: Icon(
                        secure ? Icons.visibility : Icons.visibility_off,
                        color: secure ? Colors.grey : Colors.blue,
                      )),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 15),
            child: Text(
              "Repeat Password",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25, top: 5, right: 25),
              child: TextField(
                controller: repeatPasswordController,
                obscureText: sc,
                onChanged: (value) {
                  setState(() {
                    sc = (value == passwordController.text);
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.deepPurpleAccent[10],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          sc = !sc;
                        });
                      },
                      icon: Icon(sc ? Icons.visibility : Icons.visibility_off,
                          color: sc ? Colors.grey : Colors.blue)),
                ),
              )),
          SizedBox(height: 10),
          !sc
              ? Text(
                  'Passwords do not match!',
                  style: TextStyle(color: Colors.red),
                )
              : Container(),
          SizedBox(
            height: 15,
          ),
          Button(name: 'Login',colors: Colors.white,child: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Intro()));

          },),
          // Padding(
          //     padding: const EdgeInsets.only(left: 24, top: 2, right: 24),
          //     child: GestureDetector(
          //       onTap: () {
          //         Navigator.push(
          //             context, MaterialPageRoute(builder: (context) => Menu()));
          //       },
          //       child: Container(
          //         height: 54,
          //         width: double.maxFinite,
          //         decoration: BoxDecoration(
          //             color: Colors.indigo,
          //             borderRadius: BorderRadius.all(Radius.circular(57))),
          //         child: Center(
          //           child: Text(
          //             "NEXT",
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w700),
          //           ),
          //         ),
          //       ),
          //     )),
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
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Log()));
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            ],
          )
        ],
      ),
    ));
  }
}
