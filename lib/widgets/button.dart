import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String texto;
  final Function onPressed;
  Button(this.texto, {this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.purpleAccent,
        child: Text(
          texto,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        onPressed: onPressed);
  }
}
