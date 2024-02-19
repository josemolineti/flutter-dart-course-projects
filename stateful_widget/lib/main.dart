import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(name: 'Gustavo'));
}

class MyApp extends StatefulWidget {
  final String name;
  const MyApp({Key? key, required this.name}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salary = 5000;

  void aumentaSalario(int valorAumento) {
    setState(() {
      salary += valorAumento;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print('clicou');
          aumentaSalario(599);
          print('novo salario ${salary}');
        },
        child: Text(
          'O salário de ${widget.name} é $salary',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
