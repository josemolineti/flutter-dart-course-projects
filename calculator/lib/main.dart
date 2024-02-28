// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String number = '';
  String firstNumber = '';
  String secondNumber = '';
  String operator = '';
  String result = '';

  String makeResult(String firstNumber, String secondNumber, String operator) {
    if (secondNumber != '' && firstNumber != '') {
      double firstNumDouble = double.parse(firstNumber);
      double secondNumDouble = double.parse(secondNumber);
      double resultNum = 0;
      if (operator == '+') {
        resultNum = firstNumDouble + secondNumDouble;
      } else if (operator == '-') {
        resultNum = firstNumDouble - secondNumDouble;
      } else if (operator == '/') {
        if (secondNumDouble != '0') {
          resultNum = firstNumDouble / secondNumDouble;
        }
      } else if (operator == 'X') {
        resultNum = firstNumDouble * secondNumDouble;
      }
      return resultNum.toString();
    }
    return '';
  }

  void calcular(String pad) {
    if (number == 'Infinity') {
      number = '';
    } else {
      if ((pad == '0' ||
              pad == '1' ||
              pad == '2' ||
              pad == '3' ||
              pad == '4' ||
              pad == '5' ||
              pad == '6' ||
              pad == '7' ||
              pad == '8' ||
              pad == '9' ||
              pad == ',') &&
          number.length < 10) {
        setState(() {
          number += pad;
          number.replaceAll(',', '.');
          if (!number.contains('.')) {
            print('alooo');
            //int numInt = int.parse(number);
            //number = numInt.toString();
          }
          number.replaceAll('.', ',');
        });
      } else if (pad == 'AC') {
        setState(() {
          number = '';
        });
      } else if (pad == '+' || pad == '-' || pad == '/' || pad == 'X') {
        firstNumber = number;
        operator = pad;
        setState(() {
          number = '';
        });
      } else if (pad == '=') {
        secondNumber = number;
        result = makeResult(firstNumber, secondNumber, operator);
        setState(() {
          number = result;
        });
      } else if (pad == 'bkspc') {
        setState(() {
          number = number.substring(0, number.length - 1);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Calculator')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  number,
                  style: TextStyle(fontSize: 72),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('AC');
                  },
                  child: Text(
                    'AC',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('bkspc');
                  },
                  child: Text(
                    '<X]',
                    style: TextStyle(fontSize: 48),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('7');
                  },
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('8');
                  },
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('9');
                  },
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('/');
                  },
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('4');
                  },
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('5');
                  },
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular("6");
                  },
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('X');
                  },
                  child: Text(
                    'X',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('1');
                  },
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('2');
                  },
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('3');
                  },
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('-');
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('0');
                  },
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular(',');
                  },
                  child: Text(
                    ',',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('=');
                  },
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('+');
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Text('Coluna 6'),
          ],
        ),
      ),
    );
  }
}
