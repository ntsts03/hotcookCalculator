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
  double allWeight = 0;
  double podWeight = 680;
  double foodWeight = 0;
  String soltWeight = '〇〇';

  void foodWeightCalc(double allWeight) {
    foodWeight = allWeight - podWeight;
  }

  void soltWeightCalc(double foodWeight) {
    // ignore: unused_local_variable
    soltWeight = (foodWeight * 0.006).toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホットクック塩分量計'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
              ),
              onChanged: (allWeight) {
                foodWeightCalc(double.parse(allWeight));
                soltWeightCalc(foodWeight);
                setState(() {});
                print(allWeight);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '鍋の重さ(680g)',
              style: TextStyle(fontSize: 18),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 20),
                children: [
                  const TextSpan(text: '塩の量は'),
                  TextSpan(
                    text: '${soltWeight}g',
                    style: const TextStyle(
                      fontSize: 30,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(text: 'です'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
