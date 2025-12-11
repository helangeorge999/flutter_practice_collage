import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();

  String result = "";

  void calculate(String operation) {
    double n1 = double.tryParse(num1Controller.text) ?? 0;
    double n2 = double.tryParse(num2Controller.text) ?? 0;

    double ans = 0;

    switch (operation) {
      case "add":
        ans = n1 + n2;
        break;
      case "sub":
        ans = n1 - n2;
        break;
      case "mul":
        ans = n1 * n2;
        break;
      case "div":
        if (n2 == 0) {
          setState(() {
            result = "Cannot divide by zero";
          });
          return;
        }
        ans = n1 / n2;
        break;
    }

    setState(() {
      result = "Result: $ans";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Basic Calculator",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter Number 1",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter Number 2",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => calculate("add"),
                  child: const Text("Add"),
                ),
                ElevatedButton(
                  onPressed: () => calculate("sub"),
                  child: const Text("Subtract"),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => calculate("mul"),
                  child: const Text("Multiply"),
                ),
                ElevatedButton(
                  onPressed: () => calculate("div"),
                  child: const Text("Divide"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Text(
              result,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
