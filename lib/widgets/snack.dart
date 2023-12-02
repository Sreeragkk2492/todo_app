import 'package:flutter/material.dart';

class CustomSnackBar {
  static void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: TextField(decoration: InputDecoration(labelText: "task"),),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
