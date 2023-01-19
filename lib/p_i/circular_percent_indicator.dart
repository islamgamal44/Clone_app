// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:f2/p_i/cpi_widget/graph/monthlly.dart';
import 'package:f2/p_i/cpi_widget/graph/monthly.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cpi_widget/cpi_widget.dart';

class PercentIndicator extends StatefulWidget {
  const PercentIndicator({Key? key}) : super(key: key);

  @override
  State<PercentIndicator> createState() => _PercentIndicatorState();
}

class _PercentIndicatorState extends State<PercentIndicator> {
  final List<String> items = [
    'Monthly',
    'Daily',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: CPI(
                            centreText: '75%',
                            footerText: 'Users',
                            percent: .75,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: CPI(
                            centreText: '100%',
                            footerText: 'Mens',
                            percent: 1,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: CPI(
                            centreText: '25%',
                            footerText: 'Women',
                            percent: .25,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: Text(
                    'Select Item',
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold)),
                  ),
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,

                  onChanged: (String? newValue) {
                    if (newValue != selectedValue) {
                      switch (newValue) {
                        case 'Monthly':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Monthly()),
                          );
                          break;
                        case 'Daily':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Daily()),
                          );
                          break;
                      }
                    }

                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  // value: selectedValue,
                  // onChanged: (value) {
                  //   setState(() {
                  //     selectedValue = value as String;
                  //   });
                  buttonHeight: 40,
                  buttonWidth: 140,
                  itemHeight: 40,
                ),
              ),
            ),

            // Padding
          ],
        ),
      ]),
    ));
  }
}
