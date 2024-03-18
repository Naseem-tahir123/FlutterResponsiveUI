import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  static bool isMoble(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width < 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 850) {
      return mobile;
    }
    if (size.width >= 850 && size.width <= 1100 && tablet != null) {
      return tablet!;
    } else {
      return desktop;
    }
  }
}
