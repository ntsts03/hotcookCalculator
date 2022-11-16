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
        title: Text('ホットクック塩分量算出計'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "総重量",
                hintText: "入力してください",
              ),
            ),
            Text('- 鍋の重さ(680g)'),
            Text(' = 結果'),
          ],
        ),
      ),
    );
  }
}
