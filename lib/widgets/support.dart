import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return const TextStyle(
        color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold);
  }

  static TextStyle lightTextFieldStyle() {
    return const TextStyle(
        color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w300);
  }

  static TextStyle semiboldTextFieldStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.w400, fontSize: 17.0);
  }
}
