import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: hotcookCalculator(),
    );
  }
}

class hotcookCalculator extends StatefulWidget {
  const hotcookCalculator({super.key});

  @override
  State<hotcookCalculator> createState() => _hotcookCalculatorState();
}

class _hotcookCalculatorState extends State<hotcookCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('煮物塩分濃度計'),
      ),
    );
  }
}
