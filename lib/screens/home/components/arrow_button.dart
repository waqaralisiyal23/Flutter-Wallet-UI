import 'package:flutter/material.dart';
import 'package:walletappui/res/app_colors.dart';
import 'package:walletappui/res/app_styles.dart';

class ArrowButton extends StatelessWidget {
  final Widget icon;
  const ArrowButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primaryWhite,
          borderRadius: BorderRadius.circular(15),
          boxShadow: AppStyles.neumorphShadow,
        ),
        child: icon,
      ),
    );
  }
}
