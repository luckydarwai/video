import 'package:flutter/material.dart';
import 'package:video/home.dart';
import 'package:video/login.dart';
// import 'dart:ui';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {"login": (context) => MyLogin(), "home": (context) => MyHome()},
    initialRoute: "login",
  ));
}
