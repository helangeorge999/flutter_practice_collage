import 'package:flutter/material.dart';

class MyStackLayoutScreen extends StatelessWidget {
  const MyStackLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Image')),
        body: Center(
          child: Image.network(
            'https://i.pinimg.com/originals/a2/aa/83/a2aa83f541227e9ce7e16091f42468ce.jpg?nii=t',
          ),
        ),
      ),
    );
  }
}
