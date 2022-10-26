import 'package:flutter/material.dart';

@immutable
abstract class AppStyles {
  static final List<BoxShadow> neumorphShadow = [
    BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -5,
      offset: const Offset(-5, -5),
      blurRadius: 30,
    ),
    BoxShadow(
      color: Colors.blue[900]!.withOpacity(.2),
      spreadRadius: 2,
      offset: const Offset(7, 7),
      blurRadius: 20,
    ),
  ];
}
