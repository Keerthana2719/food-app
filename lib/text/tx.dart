import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textf extends StatelessWidget {
  bool ob;
// Icon a;
  String name;

  Textf({super.key, required this.name, this.ob = false,});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25, top: 5, right: 25),
        child: TextField(
          obscureText: ob,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.blueGrey[10],
            hintText: name,
            // suffixIcon:  a  ,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ));
  }

  void setState(Null Function() param0) {}
}

/*void setState(Null Function() param0) {

  }
}
*/
