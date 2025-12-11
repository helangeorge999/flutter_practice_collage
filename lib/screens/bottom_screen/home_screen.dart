import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pController = TextEditingController();
  final tController = TextEditingController();
  final rController = TextEditingController();

  double? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Simple Interest Calculator",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: pController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Principal (P)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: rController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Rate (R)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: tController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Time (T)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                final p = double.tryParse(pController.text) ?? 0;
                final r = double.tryParse(rController.text) ?? 0;
                final t = double.tryParse(tController.text) ?? 0;

                setState(() {
                  result = (p * r * t) / 100;
                });
              },
              child: const Text("Calculate"),
            ),

            const SizedBox(height: 20),

            Text(
              result == null ? "" : "Simple Interest = $result",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
