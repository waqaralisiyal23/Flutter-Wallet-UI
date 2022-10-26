import 'package:flutter/material.dart';
import 'package:walletappui/res/app_colors.dart';
import 'package:walletappui/screens/home/components/card_section.dart';
import 'package:walletappui/screens/home/components/cutsom_app_bar.dart';
import 'package:walletappui/screens/home/components/expenses_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryWhite,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
                child: const CustomAppBar(),
              ),
              const Expanded(child: CardSection()),
              const Expanded(child: ExpensesWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
