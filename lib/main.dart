import 'package:flutter/material.dart';
import 'package:climate/Pages/homepage.dart';

void main() {
  runApp(WeatherChecker());
}

class WeatherChecker extends StatelessWidget {
  const WeatherChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
