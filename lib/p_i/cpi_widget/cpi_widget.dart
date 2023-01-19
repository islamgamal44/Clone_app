// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CPI extends StatelessWidget {
  final String centreText;
  final String footerText;
  final double percent;

  const CPI(
      {Key? key,
      required this.centreText,
      required this.footerText,
      required this.percent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularPercentIndicator(
        radius: 45,
        lineWidth: 4,
        percent: percent,
        // center: DefaultTextStyle(
        //   style: GoogleFonts.rubik(
        //       textStyle: TextStyle(
        //           fontSize: 20,
        //           color: Colors.blue[700],
        //           fontWeight: FontWeight.bold)),
        //   child: AnimatedTextKit(
        //     pause: Duration(seconds: 1),
        //     animatedTexts: [
        //       ScaleAnimatedText(centreText),
        //       ScaleAnimatedText(centreText),
        //       ScaleAnimatedText(centreText),
        //     ],
        //     onTap: () {
        //       print("");
        //     },
        //   ),
        // ),
        center: Text(
          centreText,
          style: GoogleFonts.rubik(
              textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold)),
        ),
        footer: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            footerText,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.blue[700],
        backgroundColor: Colors.white,
        animation: true,
        animationDuration: 2000,
      ),
    );
  }
}
