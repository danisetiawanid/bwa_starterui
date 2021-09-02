import 'package:bwa_basicstatemanagement/theme/theme_text.dart';
import 'package:flutter/material.dart';

class WidgetHeader extends StatelessWidget {
  const WidgetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 32, left: 32),
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/payment_home.png',
                  width: 267,
                  height: 200,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Upgrade to ',
                style: titleTextStyle,
              ),
              Text(
                'Pro',
                style: titleProTextStyle,
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Go unlock all features and \nbuild your own business bigger',
            style: subtitleTextStyle,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
