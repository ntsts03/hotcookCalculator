import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HotcookCalculator(),
    );
  }
}

class HotcookCalculator extends StatefulWidget {
  const HotcookCalculator({super.key});

  @override
  State<HotcookCalculator> createState() => _HotcookCalculatorState();
}

class _HotcookCalculatorState extends State<HotcookCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホットクック塩分量算出計'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              // width: 100,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
              ),
              onFieldSubmitted: (weight) {
                print(weight);
              },
            ),
            Text('- 鍋の重さ(680g)'),
            Text(' = 結果'),
          ],
        ),
      ),
    );
  }
}
