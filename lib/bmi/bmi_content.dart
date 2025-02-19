import 'package:bmi_eventek/bmi_result/bmi_result_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiContent extends StatefulWidget {
  const BmiContent({super.key});

  @override
  State<BmiContent> createState() => _BmiContentState();
}

class _BmiContentState extends State<BmiContent> {
  bool isMale=true;
  double height=60;
  int age=18;
  double weight=50;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                     isMale =! isMale;
                     setState(() {

                     });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: isMale ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 100,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      isMale=!isMale;
                      setState(() {

                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:isMale? Colors.grey: Colors.blue,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 100,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${height.round()}',
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 20),
                      )
                    ],
                  ),
                  Slider(
                      min: 60,
                      max: 300,
                      value: height,
                      inactiveColor: Colors.grey[800],
                      activeColor: Colors.blue,
                      thumbColor: Colors.blue,
                      onChanged: (value) {
                        height=value;
                        setState(() {

                        });
                      }),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$age',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              age++;
                              setState(() {

                              });
                            },
                            mini: true,
                            child: const Icon(
                              Icons.add,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              age--;
                              setState(() {

                              });
                            },
                            mini: true,
                            child: const Icon(
                              Icons.remove,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Weight",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text(
                        '${weight.round()}',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              weight++;
                              setState(() {

                              });
                            },
                            mini: true,
                            child: const Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.blue,
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              weight--;
                              setState(() {

                              });
                            },
                            mini: true,
                            child: const Icon(
                              Icons.remove,
                              size: 30,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
        InkWell(
          onTap: () {
            // height*(0.5*weight);
            double result=height*(0.5*weight);
            Navigator.push(context, MaterialPageRoute(builder:
            (context){
              return BmiResultView(
                result: result,
                gender: isMale ?"Male":"Female",
                age: age,);
            }));
          },
          child: Container(
            height: 70,
            width: double.infinity,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Calculate',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
