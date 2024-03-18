// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task_1/controllers/menu_controller.dart';
import 'package:ui_task_1/responsive.dart';
import 'package:ui_task_1/screens/dashboard/dashboard_screen.dart';
import 'package:ui_task_1/screens/main/components/side_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> iconList = [
    Icons.message,
    Icons.circle,
    Icons.notification_add,
    Icons.search_outlined, // Updated icon
    // Updated icon
  ];
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    final MenuAppController menuAppController = Get.put(MenuAppController());
    return Scaffold(
        // backgroundColor: Colors.grey,
        key: menuAppController.scaffoldKey,
        drawer: SideMenu(),
        body: SafeArea(
          child: Container(
            color: Colors.grey,
            child: Padding(
              padding: !Responsive.isMoble(context)
                  ? EdgeInsets.all(MediaQuery.of(context).size.width * 0.001)
                  : EdgeInsets.only(),
              child: Column(
                children: [
                  Flexible(
                    // flex: 5,
                    child: Padding(
                      padding: !Responsive.isMoble(context)
                          ? EdgeInsets.symmetric(horizontal: 8.0)
                          : EdgeInsets.only(),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                        child: DashBoardScreen(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Responsive.isMoble(context)
            ? Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: iconList.map((icon) {
                      int index = iconList.indexOf(icon);
                      return IconButton(
                        icon: Icon(icon),
                        color: _bottomNavIndex == index
                            ? Colors.white
                            : Colors.grey,
                        onPressed: () =>
                            setState(() => _bottomNavIndex = index),
                      );
                    }).toList(),
                  ),
                ),
              )
            : null);
  }
}
