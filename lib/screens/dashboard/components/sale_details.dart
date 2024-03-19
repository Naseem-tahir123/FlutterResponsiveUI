// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_task_1/responsive.dart';
import 'package:ui_task_1/screens/dashboard/components/pie_chart.dart';

class SaleDetails extends StatelessWidget {
  const SaleDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: !Responsive.isMoble(context)
                    ? EdgeInsets.all(8.0)
                    : EdgeInsets.only(),
                child: Column(
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              color: Colors.amber.shade50,
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: -10,
                                      right: -10,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 20,
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.amber.shade50,
                                        ),
                                      )),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("Spend"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("\$123.456"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              color: Colors.pink.shade100,
                              child: Stack(
                                children: [
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("Spend"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("\$123.456"),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: -10,
                                    right: -10,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.black,
                                      child: Icon(
                                        Icons.attach_money,
                                        color: Colors.pink.shade100,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              color: Colors.amber.shade700,
                              child: Stack(
                                children: [
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("Spend"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("\$123.456"),
                                      )
                                    ],
                                  ),
                                  Positioned(
                                      top: -10,
                                      right: -10,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.visibility,
                                          color: Colors.amber.shade700,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              color: Colors.blue.shade100,
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: -10,
                                      right: -10,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.attach_money,
                                          color: Colors.blue.shade100,
                                        ),
                                      )),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("Spend"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("\$123.456"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.01,
                      left: MediaQuery.of(context).size.width * 0.01),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff404040),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Invoices",
                                  style: TextStyle(color: Colors.white70),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.more_horiz),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [PiChart()],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Pending",
                                    style: TextStyle(color: Colors.white70)),
                                Text("\$175",
                                    style: TextStyle(color: Colors.white70))
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                          Flexible(
                            flex: 1,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Pending",
                                    style: TextStyle(color: Colors.white70)),
                                Text("\$175",
                                    style: TextStyle(color: Colors.white70))
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                          Flexible(
                            flex: 1,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Pending",
                                    style: TextStyle(color: Colors.white70)),
                                Text("\$175",
                                    style: TextStyle(color: Colors.white70))
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
