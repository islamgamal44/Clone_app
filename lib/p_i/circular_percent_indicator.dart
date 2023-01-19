// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'cpi_widget/cpi_widget.dart';

class PercentIndicator extends StatelessWidget {
  const PercentIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CPI(
                        centreText: '90%',
                        footerText: 'Products',
                        percent: .9,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CPI(
                        centreText: '75%',
                        footerText: 'Users',
                        percent: .75,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CPI(
                        centreText: '100%',
                        footerText: 'Mens',
                        percent: 1,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CPI(
                        centreText: '25%',
                        footerText: 'Women',
                        percent: .25,
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
