// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_task_1/screens/dashboard/components/barchart.dart';

class CenterPart extends StatelessWidget {
  const CenterPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          // height: 250,
                          decoration: const BoxDecoration(
                              color: Color(0xFF212226),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Flexible(
                                  // flex: 1,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Naseem",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Color(0xFF212226),
                                        onPressed: () {},
                                        child: Transform(
                                          transform: Matrix4.skewX(
                                              -0.3), // Adjust the skew value as needed
                                          child: Container(
                                            decoration: BoxDecoration(
                                              // color: Colors.blue,
                                              border: Border.all(
                                                  color: Colors.white70),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Icon(
                                              Icons.more_horiz_rounded,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(flex: 6, child: BarChartWidget())
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFC8F230),
                            ),
                            child: Icon(Icons.arrow_upward),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          // height: 250,
                          decoration: const BoxDecoration(
                              color: Color(0xFF212226),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Flexible(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Top Product",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Color(0xFF212226),
                                        onPressed: () {},
                                        child: Transform(
                                          transform: Matrix4.skewX(
                                              -0.3), // Adjust the skew value as needed
                                          child: Container(
                                            decoration: BoxDecoration(
                                              // color: Colors.blue,
                                              border: Border.all(
                                                  color: Colors.white70),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Icon(
                                              Icons.more_horiz_rounded,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(flex: 5, child: Container())
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFC8F230),
                            ),
                            child: Icon(Icons.arrow_upward),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF212226),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Status",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.download,
                                          color: Colors.white,
                                        ))
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 3,
                                thickness: 1,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Expanded(
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "RFQ ID",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Vendor",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Vendor Contact",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Apply Date",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Status",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 3,
                                thickness: 1,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Expanded(
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "RFQ ID",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Vendor",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Vendor Contact",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Apply Date",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Status",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 3,
                                thickness: 1,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "RFQ ID",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Vendor",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Vendor Contact",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Apply Date",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    ),
                                    Text(
                                      "Status",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.702)),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 3,
                                thickness: 1,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
