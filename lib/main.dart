import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0B1033),
        scaffoldBackgroundColor: Color(0xFF0B1033),
      ),
      home: InputPage(),
    );
  }
}
