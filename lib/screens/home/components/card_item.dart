import 'package:flutter/material.dart';
import 'package:walletappui/res/app_colors.dart';
import 'package:walletappui/res/app_styles.dart';
import 'package:walletappui/res/images.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double fontSize(double size) {
      return size * width / 414;
    }

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: width / 20, vertical: height / 20),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.topLeft,
              width: width / 1.8,
              child: Image.asset(Images.masterCardLogo, fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: height / 10,
              width: width / 1.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Text(
                        '**** **** **** ',
                        style: TextStyle(
                            fontSize: fontSize(20),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '1930',
                        style: TextStyle(
                          fontSize: fontSize(30),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Platinum Card'.toUpperCase(),
                    style: TextStyle(
                      fontSize: fontSize(15),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              alignment: Alignment.bottomRight,
              width: width / 6,
              height: height / 16,
              decoration: BoxDecoration(
                color: AppColors.primaryWhite,
                boxShadow: AppStyles.neumorphShadow,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
