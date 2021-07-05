import 'package:flutter/material.dart';
import 'package:ui6/view/screens/home_screen.dart';
import 'package:ui6/view/screens/second_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomePage());
  }
}

