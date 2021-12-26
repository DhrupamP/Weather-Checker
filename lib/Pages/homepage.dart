import 'package:climate/Pages/result.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:climate/getdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: Container(
          child: Stack(
        children: [
          Align(
            alignment: Alignment(0, -0.8),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(hintText: "Enter Location Name"),
                  controller: myController,
                )),
          ),
          Align(
            alignment: Alignment(0, 0.4),
            child: ElevatedButton(
              child: Text("Search"),
              onPressed: () {
                getWeather(myController.text);
                Future.delayed(Duration(seconds: 1), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        name: myController.text,
                      ),
                    ),
                  );
                });
              },
            ),
          )
        ],
      )),
    );
  }
}
