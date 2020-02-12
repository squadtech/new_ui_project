import 'package:flutter/material.dart';
import 'package:new_ui_project/People.dart';
import 'package:new_ui_project/profile.dart';
import 'package:new_ui_project/salepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       body: People(),
      ),
    );
  }
}

