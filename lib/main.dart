import 'package:flutter/material.dart';

import 'Screens//login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      home: LoginScreen(),
    );
  }
}