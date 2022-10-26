import 'package:flutter/material.dart';

@immutable
abstract class AppColors {
  static const Color primaryWhite = Color(0xFFCADCED);
  static final List<Color> pieColors = [
    Colors.indigo[400]!,
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.brown,
  ];
}
