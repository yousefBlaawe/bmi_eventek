import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiContent extends StatelessWidget {
  const BmiContent({super.key});

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
                      onTap: (){
                        print('object');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male,
                            size: 100,

                            ),
                            Text('Male',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                            ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                const SizedBox(width: 20,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      print('blaawe');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,

                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female,
                          size: 100,
                          ),
                          Text('Female',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
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
            padding: const EdgeInsets.only(left: 20.0,
            right: 20,
              bottom: 20
            ),
            child: Container(
              width: double.infinity,
             decoration: BoxDecoration(
               color: Colors.grey,
               borderRadius: BorderRadius.circular(15)
             ),
              child: Column(
                children: [
                  Text('Height',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                  ),
                  Row(
                    children: [
                      Text('60',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,

                      ),
                      ),
                      Text('cm',
                        style: TextStyle(
                          textBaseline: TextBaseline.alphabetic,
                          fontWeight: FontWeight.w900,
                          fontSize: 20
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
          ),
        ),
        Container(
          height: 70,
          width: double.infinity,
          color: Colors.blue,
          child: const Center(
            child: Text('Calculate',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
          ),
        )
      ],
    );
  }
}
