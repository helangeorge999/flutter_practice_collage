import 'package:flutter/material.dart';
import 'package:flutter_for_college/models/student_model.dart';
import 'package:flutter_for_college/widget/card_widget.dart';

class CardViewScreen extends StatelessWidget {
  const CardViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StudentModel> lstStudents = [
      StudentModel(fname: "John", lname: "Doe", city: "Chitwan"),
      StudentModel(fname: "Jane", lname: "Smith", city: "Kathmandu"),
      StudentModel(fname: "Alice", lname: "Johnson", city: "Pokhara"),
      StudentModel(fname: "John", lname: "Doe", city: "Chitwan"),
      StudentModel(fname: "Jane", lname: "Smith", city: "Kathmandu"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final student = lstStudents[index];
          return CardView(student: student);
        },
        itemCount: lstStudents.length,
        padding: const EdgeInsets.all(20.0),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
