import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi_content.dart';

class BmiView extends StatelessWidget {
  const BmiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('BMI',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,

        ),
        ),
        centerTitle: true,
      ),
      body: const BmiContent(),
    );
  }
}
