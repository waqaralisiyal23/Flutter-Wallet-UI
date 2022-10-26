import 'dart:math';

import 'package:flutter/material.dart';
import 'package:walletappui/models/category.dart';
import 'package:walletappui/res/app_colors.dart';

class PieChartPainter extends CustomPainter {
  final List<Category> categories;
  final double width;

  PieChartPainter({required this.categories, required this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 1.8;

    double total = 0;
    for (Category category in categories) {
      total += category.price;
    }

    double startRadian = -pi / 2;
    for (int i = 0; i < categories.length; i++) {
      final currentCategory = categories[i];
      double sweepRadian = (currentCategory.price / total) * 2 * pi;
      paint.color = AppColors.pieColors[i];
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startRadian,
        sweepRadian,
        false,
        paint,
      );
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
