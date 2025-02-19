import 'package:bmi_eventek/bmi/bmi_view.dart';
import 'package:bmi_eventek/bmi_result/bmi_result_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home:BmiView() ,
    );

  }

}