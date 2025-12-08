import 'package:flutter/material.dart';

class StackLayoutScreen extends StatelessWidget {
  const StackLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.amber,
              child: const Text(' I am a First Container'),
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: const Text('I am a Second Container'),
              ),
            ),
            Positioned(
              bottom: 1,
              right: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: const Text('I am a Third Container'),
              ),
            ),
            Positioned(
              bottom: -20,
              right: 400 / 2 - 50,
              child: Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 208, 166, 163),
                child: const Text('I am a Fourth Container'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
