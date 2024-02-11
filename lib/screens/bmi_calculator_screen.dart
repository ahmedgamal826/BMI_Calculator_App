import 'dart:math';
import 'package:flutter/material.dart';
import '../widgets/custom_floating_action_button.dart';

class BmiCalculatorScreen extends StatefulWidget {
  BmiCalculatorScreen({super.key, required this.weight});

  final double weight;

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  double currentSliderValue = 50;

  int age = 20;
  double weight = 60;
  bool isSelected = true;
  String male = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Bmi Calculator',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                        male = 'Male';
                      });
                    },
                    child: Container(
                      width: 170,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isSelected ? Colors.red : Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/male-gender.png',
                            width: 100,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                        male = 'Female';
                      });
                    },
                    child: Container(
                      width: 170,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: !isSelected ? Colors.red : Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/female_gender.png',
                            width: 100,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Container(
                    width: 170,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              currentSliderValue.toStringAsFixed(0),
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Baseline(
                              baseline: 30,
                              baselineType: TextBaseline.alphabetic,
                              child: Text(
                                'cm',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Slider(
                            inactiveColor: Colors.grey,
                            activeColor: Colors.black,
                            min: 3,
                            max: 220,
                            value: currentSliderValue,
                            label: currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                currentSliderValue = value;
                              });
                            })
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      Container(
                        width: 170,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'weight',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                  fontSize: 45, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomFloatingActionButton(
                                  heroTag: 'negative button for weight ',
                                  onpressed: () {
                                    setState(() {
                                      if (weight != 0) {
                                        weight--;
                                      }
                                    });
                                  },
                                  icon: Icons.remove,
                                ),
                                CustomFloatingActionButton(
                                  heroTag: 'add button for weight ',
                                  onpressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icons.add,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      Container(
                        width: 170,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomFloatingActionButton(
                                  heroTag: 'negative button for age ',
                                  onpressed: () {
                                    setState(() {
                                      if (age != 0) {
                                        age--;
                                      }
                                    });
                                  },
                                  icon: Icons.remove,
                                ),
                                CustomFloatingActionButton(
                                  heroTag: 'add button for age ',
                                  onpressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icons.add,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.black),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => Dialog(
                        child: Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Gender : ',
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '${male == 'Male' ? 'Male' : 'Female'}',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Age : ',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '$age',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'BMI : ',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${(weight / pow(currentSliderValue / 100, 2)).toStringAsFixed(2)}',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        'Close',
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, right: 50, left: 50),
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
