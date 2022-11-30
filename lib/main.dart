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
  double weight = 0;

  void soltcalc(double weight) {
    weight = weight * 0.006;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホットクック塩分量計'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              width: 100,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
              ),
              onFieldSubmitted: (weight) {
                soltcalc(double.parse(weight));
                print(weight);
              },
            ),
            const Text('- 鍋の重さ(680g)'),
            const Text(' = 結果'),
          ],
        ),
      ),
    );
  }
}
