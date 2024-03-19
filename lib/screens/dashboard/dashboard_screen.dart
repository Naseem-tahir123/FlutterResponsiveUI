// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_task_1/screens/dashboard/components/center_part.dart';
import 'package:ui_task_1/screens/dashboard/components/sale_details.dart';

import '../../responsive.dart';
import '../main/components/side_menu.dart';
import 'components/header.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: !Responsive.isMoble(context)
                  ? MediaQuery.of(context).size.height * 0.17
                  : MediaQuery.of(context).size.height * 0.1,
              // color: Colors.black,
              child: Padding(
                  padding: !Responsive.isMoble(context)
                      ? EdgeInsets.only(top: 12, left: 8, right: 8)
                      : EdgeInsets.only(),
                  child: Header()),
            ),
            SizedBox(
              height: !Responsive.isMoble(context)
                  ? MediaQuery.of(context).size.height * 0.8
                  : MediaQuery.of(context).size.height *
                      0.6, // Provide a height constraint
              child: Row(
                children: [
                  if (Responsive.isDesktop(context))
                    Expanded(flex: 1, child: SideMenu()),
                  Expanded(
                    flex: 7,
                    child: CenterPart(),
                  ),
                  if (!Responsive.isMoble(context))
                    Expanded(flex: 4, child: SaleDetails()),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * 0.01),
            if (Responsive.isMoble(context))
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.6, // Provide a height constraint
                child: SaleDetails(),
              ),
          ],
        ),
      ),
    );
  }
}
