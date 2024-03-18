// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task_1/controllers/menu_controller.dart';
import 'package:ui_task_1/responsive.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    final MenuAppController menuAppController = Get.put(MenuAppController());
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  if (!Responsive.isDesktop(context))
                    IconButton(
                        onPressed: menuAppController.controlMenu,
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  Text(
                    "Kraya.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (!Responsive.isMoble(context))
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 10,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, bottom: 20, top: 2),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.message,
                            color: Colors.white70,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.white70,
                          ),
                          Icon(
                            Icons.notification_add_outlined,
                            color: Colors.white70,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white70,
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
    );
  }
}
