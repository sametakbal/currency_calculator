import 'package:currency_calculator/view/calculator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp(
      key: UniqueKey(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(key: UniqueKey()),
    );
  }
}
