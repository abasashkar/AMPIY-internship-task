import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:internship_task/widgets/support.dart';

class HoemPage extends StatefulWidget {
  const HoemPage({super.key});

  @override
  State<HoemPage> createState() => _HoemPageState();
}

class _HoemPageState extends State<HoemPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Welcome to AMPIY',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Buy your first Crypto Asset today',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              const SizedBox(
                height: 6,
              ),
              ElevatedButton(
                onPressed: () {
                  // Your onPressed function here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(248, 6, 106, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  '                          Verify Account                        ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(
                            10), // Adjust padding as needed
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(
                              248, 6, 106, 255), // Background color
                          shape:
                              BoxShape.circle, // Makes the container circular
                        ),
                        child: const Icon(Icons.add,
                            size: 30, color: Colors.black), // Icon 1
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Buy',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(
                            10), // Adjust padding as needed
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(248, 6, 106, 255),
                          shape:
                              BoxShape.circle, // Makes the container circular
                        ),
                        child: const Icon(Icons.remove,
                            size: 30, color: Colors.black), // Icon 2
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Sell',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(
                            10), // Adjust padding as needed
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(248, 6, 106, 255),
                          shape:
                              BoxShape.circle, // Makes the container circular
                        ),
                        child: const Icon(Icons.person,
                            size: 30, color: Colors.black), // Icon 3
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Referral',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(
                            10), // Adjust padding as needed
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(
                              248, 6, 106, 255), // Background color
                          shape:
                              BoxShape.circle, // Makes the container circular
                        ),
                        child: const Icon(Icons.play_arrow,
                            size: 30, color: Colors.black), // Icon 4
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Tutorial',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromARGB(255, 57, 62, 104),
                ),
                height: 170,
                width: 470,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(7, 8, 0, 0),
                      child: Text(' Create Wealth with SIP',
                          style: AppWidget.semiboldTextFieldStyle()),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                      child: Text(' Invest. Grow. Repeat. Grow your money with',
                          style: AppWidget.lightTextFieldStyle()),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text('SIP now',
                          style: AppWidget.lightTextFieldStyle()),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Your onPressed function here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(248, 6, 106, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text(
                              'start a sip',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(120, 0, 10, 0),
                          child: Image(
                              height: 90,
                              width: 90,
                              image: AssetImage(
                                'assets/image.png',
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromARGB(255, 57, 62, 104),
                      ),
                      height: 116,
                      width: 178,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(7, 8, 0, 0),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 57, 0),
                              child: Text('SIP Calculator',
                                  style: AppWidget.semiboldTextFieldStyle()),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 3, 10, 0),
                            child: Text(' Calculate Interest and Return',
                                style: AppWidget.lightTextFieldStyle()),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(
                                      8, 20, 0, 0), // Adjust padding as needed

                                  child: const Icon(
                                    Icons.calculate,
                                    size: 25,
                                    color:
                                        const Color.fromARGB(248, 6, 106, 255),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Icon(Icons.arrow_forward,
                                    size: 20, color: Colors.white),
                              ), // Icon 1
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color.fromARGB(255, 57, 62, 104),
                    ),
                    height: 116,
                    width: 187,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(7, 8, 0, 0),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 79, 0),
                            child: Text('Deposit INR',
                                style: AppWidget.semiboldTextFieldStyle()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 3, 23, 0),
                          child: Text(' Use UPI or BankAccount to',
                              style: AppWidget.lightTextFieldStyle()),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 2, 75, 0),
                          child: Text('trade or buy SIP',
                              style: AppWidget.lightTextFieldStyle()),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(8, 0, 20, 0),
                                child: const Icon(
                                  Icons.home,
                                  size: 25,
                                  color: const Color.fromARGB(248, 6, 106, 255),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            const Icon(Icons.arrow_forward,
                                size: 20, color: Colors.white), // Icon 1
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
