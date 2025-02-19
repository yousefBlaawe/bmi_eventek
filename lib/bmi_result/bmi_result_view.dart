import 'package:bmi_eventek/bmi_result/bmi_result_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResultView extends StatelessWidget {
  const BmiResultView({
    super.key,
    required this.result,
    required this.gender,
    required this.age,
  });

  final int age;
  final String gender;
  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'BMI Result',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body:  BmiResultContent(age: age, gender: gender, result: result,));
  }
}
