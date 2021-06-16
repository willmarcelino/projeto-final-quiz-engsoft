import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String label;
  bool senha;
  TextEditingController controller;

  Input(this.label, this.senha, {this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: [
          TextFormField(
            cursorColor: Colors.blueAccent,
            controller: controller,
            obscureText: senha,
            decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: label,
                focusColor: Colors.white,
                labelStyle: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 30,
                ),
                border: OutlineInputBorder(borderSide: BorderSide())),
          )
        ],
      ),
    );
  }
}
