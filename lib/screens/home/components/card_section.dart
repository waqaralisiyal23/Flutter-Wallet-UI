import 'package:flutter/material.dart';
import 'package:walletappui/res/app_colors.dart';
import 'package:walletappui/res/app_styles.dart';
import 'package:walletappui/screens/home/components/card_item.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double fontSize(double size) {
      return size * width / 414;
    }

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: width / 20),
          alignment: Alignment.centerLeft,
          child: Text(
            'Card Selected',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize(20),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                width: width,
                decoration: BoxDecoration(
                  boxShadow: AppStyles.neumorphShadow,
                  color: AppColors.primaryWhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.symmetric(
                    horizontal: width / 25, vertical: height / 30),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 150,
                      bottom: -200,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white30,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.blue[900]!.withOpacity(0.2),
                                blurRadius: 50,
                                spreadRadius: 2,
                                offset: const Offset(20, 0)),
                            const BoxShadow(
                              color: Colors.white12,
                              blurRadius: 0,
                              spreadRadius: -2,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: -100,
                      bottom: -100,
                      left: -300,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white30,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.blue[900]!.withOpacity(0.2),
                                blurRadius: 50,
                                spreadRadius: 2,
                                offset: const Offset(20, 0)),
                            const BoxShadow(
                                color: Colors.white12,
                                blurRadius: 0,
                                spreadRadius: -2,
                                offset: Offset(0, 0)),
                          ],
                        ),
                      ),
                    ),
                    const CardItem(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
