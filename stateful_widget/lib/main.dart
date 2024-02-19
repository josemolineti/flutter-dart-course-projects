import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  final String name = 'Jonas';
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salary = 5000;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'O salário de ${widget.name} é $salary',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
