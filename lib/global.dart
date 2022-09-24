import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Global {
  static bool isIOS = false;
  static Color appColor = const Color(0xff075e54);

  static Color cupertinoAppColor = CupertinoColors.systemBlue;

  static TextStyle nameStyle = const TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle subNameStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  static TextStyle timeStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  static TextStyle cupertinoHeadings = const TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle cupertinoBlueText = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.blue,
  );

  static TextStyle cupertinoName = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle cupertinoTime = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );
}
