import 'package:flutter/material.dart';

void main() {
  int value = 10;
  runApp(MyApp(title: "Aplicativo Hello World Testee", value: value));
}

class MyApp extends StatelessWidget {
  final String title;
  final int value;
  const MyApp({Key? key, this.title = '', this.value=0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(
            'O valor inserido é: $value',
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
