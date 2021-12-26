import 'package:flutter/material.dart';
import 'package:climate/globals.dart' as globals;

import '../getdata.dart';

String? cel;

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  void initState() {
    // Future.delayed(Duration(seconds: 3), () {});
    // getWeather(widget.name);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int? c = globals.cel?.toInt();
    int? f = globals.fer?.toInt();
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment(-0.0, -0.4),
            child: Text(
              c.toString() + "°C  | " + f.toString() + "°F",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Align(
            alignment: Alignment(-0.0, -0.18),
            child: Text(
              globals.name.toString() + "(" + globals.country.toString() + ")",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, -0.9),
            child: IconButton(
              icon: Icon(Icons.chevron_left),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
