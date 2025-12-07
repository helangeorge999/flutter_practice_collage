import 'package:flutter/material.dart';
import 'package:flutter_for_college/models/student_model.dart';

class CardView extends StatelessWidget {
  const CardView({super.key, required this.student});
  final StudentModel student;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 6, 219, 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Fname : ${student.fname}",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Text(
              "Lname : ${student.lname}",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Text(
              "City : ${student.city}",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
