import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplicativo Exemplo Scaffold'),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(
                'Meu aplicativo',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'Mesma linha 2',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'Mesma linha 3',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
