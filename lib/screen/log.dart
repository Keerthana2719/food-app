import 'package:flutter/material.dart';

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
          top: 10,
        ),
        child: Container(
          child: Center(
              child: Image.asset(
            "img/Logo.jpg",
            width: 200,
            height: 170,
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
      Padding(
        padding: const EdgeInsets.only(left: 25, top: 5, right: 25),
        child: TextField(
          decoration: InputDecoration(
              hintText: "placeholder",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25, top: 15),
        child: Text(
          "Password",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25, top: 5, right: 25),
        child: TextField(
          obscureText: secure,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: "password",
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  secure = !secure;
                });
              },
              icon: Icon(secure ? Icons.visibility : Icons.visibility_off,
                  color: secure ? Colors.grey : Colors.indigo),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 18,
      ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 15, top: 5),
      //   child: Row(
      //     children: [
      //       Transform.scale(
      //         scale: 1.8,
      //         child: Checkbox(
      //           value: isChecked,
      //           onChanged: (bool? newValue) {
      //             setState(() {
      //               isChecked = newValue ?? false;
      //             });
      //           },
      //         ),
      //       ),
      //
      //       Text(
      //         "Remember me",
      //         style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w400),
      //       )
      //     ],
      //   ),
      // ),
      Padding(
        padding: const EdgeInsets.only(left: 24, top: 2, right: 24),
        child: Container(
          height: 54,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.all(Radius.circular(57))),
          child: Center(
            child: Text(
              "SIGN IN",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
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
            Container(width: 115, height: 1, color: Colors.grey,),
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
                  height: 30,
                  width: 30,
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
                children: [
                  Image.asset(
                    "img/google.jpg",
                    height: 20,
                    width: 20,
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
        height: 20,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w400),
          ),
          Text(
            "Sign up",
            style: TextStyle(color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w400),
          )
        ],
      )
    ])));
  }
}
