import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack App'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Stack(
          children: [
            Container(width: 200, height: 200, color: Colors.blue),
            Positioned(
              top: 50,
              left: 50,
              child: Container(width: 100, height: 100, color: Colors.red),
            ),
            //Container(width: 100, height: 100, color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
