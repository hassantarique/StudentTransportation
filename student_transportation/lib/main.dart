import 'package:flutter/material.dart';
import 'package:student_transportation/screens/intro_screen.dart';

void main() {
  runApp(TransportationApp());
}

class TransportationApp extends StatelessWidget {
  const TransportationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: IntroScreen(),
    );
  }
}
