import 'package:flutter/material.dart';
import 'package:walletappui/res/app_colors.dart';
import 'package:walletappui/res/app_styles.dart';
import 'package:walletappui/res/data.dart';
import 'package:walletappui/models/category.dart';
import 'package:walletappui/screens/home/components/pie_chart_painter.dart';

class PieChart extends StatefulWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  State<PieChart> createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  double total = 0;
  @override
  void initState() {
    super.initState();
    for (Category category in expenses) {
      total += category.price;
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    double fontSize(double size) {
      return size * width / 414;
    }

    return LayoutBuilder(
      builder: (context, constraint) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            boxShadow: AppStyles.neumorphShadow,
            shape: BoxShape.circle,
          ),
          child: Stack(
            children: [
              Center(
                child: SizedBox(
                  width: constraint.maxWidth * 0.6,
                  child: CustomPaint(
                    foregroundPainter: PieChartPainter(
                      categories: expenses,
                      width: constraint.maxWidth * 0.5,
                    ),
                    child: Container(),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: constraint.maxWidth * 0.5,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryWhite,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                        color: Colors.black38,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '\$${total.toString()}',
                      style: TextStyle(
                        fontSize: fontSize(22),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
