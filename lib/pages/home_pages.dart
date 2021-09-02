import 'package:bwa_basicstatemanagement/theme/theme_text.dart';
import 'package:bwa_basicstatemanagement/widget/header_widget.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = -1;

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04112F),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WidgetHeader(),
            GestureDetector(
              onTap: () {
                onItemTap(0);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: selectedIndex == 0
                          ? Color(0xff007DFF)
                          : Color(0xff4D5B7C)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectedIndex == 0
                            ? Image.asset(
                                'assets/images/checkbox.png',
                                height: 18,
                                width: 18,
                              )
                            : Image.asset(
                                'assets/images/check.png',
                                height: 18,
                                width: 18,
                              ),
                        SizedBox(
                          width: 4,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Monthly',
                              style: plainTextStyle,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Good for starting up',
                              style: descTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 91,
                        ),
                        Text(
                          '\$20',
                          style: priceTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onItemTap(1);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: selectedIndex == 1
                          ? Color(0xff007DFF)
                          : Color(0xff4D5B7C)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectedIndex == 1
                            ? Image.asset(
                                'assets/images/checkbox.png',
                                height: 18,
                                width: 18,
                              )
                            : Image.asset(
                                'assets/images/check.png',
                                height: 18,
                                width: 18,
                              ),
                        SizedBox(
                          width: 4,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Quarterly',
                              style: plainTextStyle,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Focusing on building',
                              style: descTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 91,
                        ),
                        Text(
                          '\$65',
                          style: priceTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onItemTap(2);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: selectedIndex == 2
                          ? Color(0xff007DFF)
                          : Color(0xff4D5B7C)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectedIndex == 2
                            ? Image.asset(
                                'assets/images/checkbox.png',
                                height: 18,
                                width: 18,
                              )
                            : Image.asset(
                                'assets/images/check.png',
                                height: 18,
                                width: 18,
                              ),
                        SizedBox(
                          width: 4,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Yearly',
                              style: plainTextStyle,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Steady Company',
                              style: descTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 91,
                        ),
                        Text(
                          '\$220',
                          style: priceTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FittedBox(
              child: Container(
                width: 320,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(71),
                      ),
                      backgroundColor: Color(0xff007DFF)),
                  child: Text(
                    'Check out now',
                    style: buttonTextStyle,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
