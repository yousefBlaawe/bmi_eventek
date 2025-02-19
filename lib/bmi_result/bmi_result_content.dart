import 'package:flutter/material.dart';

class BmiResultContent extends StatelessWidget {
  const BmiResultContent(
      {super.key,
      required this.age,
      required this.gender,
      required this.result});

  final int age;
  final String gender;
  final double result;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'AGE: $age',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.blue,
            ),
          ),
          Text(
            'GENDER : $gender',
            style: const TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text('Result : ${result.round()}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}
