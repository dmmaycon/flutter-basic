import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Frases do Dia",
    home: Row(
      children: <Widget>[
        Text("Um valor "),
        Text("Fica em "),
        Text("do lado do "),
        Text("de outro ")
      ],
    )
  ));
}