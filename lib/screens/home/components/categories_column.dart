import 'package:flutter/material.dart';
import 'package:walletappui/res/app_colors.dart';
import 'package:walletappui/res/data.dart';

class CategoriesColumn extends StatelessWidget {
  const CategoriesColumn({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    double fontSize(double size) {
      return size * width / 414;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: expenses
          .map(
            (category) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: AppColors.pieColors[expenses.indexOf(category)],
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    category.name,
                    style: TextStyle(
                      fontSize: fontSize(16),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
