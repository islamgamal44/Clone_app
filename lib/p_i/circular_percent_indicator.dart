// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, unnecessary_new

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
                                builder: (context) => const MonthlyCpi()),
                          );
                          break;
                        case 'Daily':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DailyCpi()),
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

class DailyCpi extends StatefulWidget {
  const DailyCpi({Key? key}) : super(key: key);

  @override
  State<DailyCpi> createState() => _DailyState();
}

class _DailyState extends State<DailyCpi> {
  List<_SalesData> dataENd = [
    _SalesData('1', 61),
    _SalesData('2', 50),
    _SalesData('3', 23),
    _SalesData('4', 80),
    _SalesData('5', 47),
    _SalesData('6', 69),
    _SalesData('7', 90),
    _SalesData('8', 30),
    _SalesData('9', 56),
    _SalesData('10', 33),
    _SalesData('11', 11),
    _SalesData('12', 66),
    _SalesData('13', 78),
    _SalesData('14', 80),
    _SalesData('15', 60),
    _SalesData('16', 34),
    _SalesData('17', 78),
    _SalesData('18', 88),
    _SalesData('19', 66),
    _SalesData('20', 95),
    _SalesData('21', 33),
    _SalesData('22', 88),
    _SalesData('23', 70),
    _SalesData('24', 70),
    _SalesData('25', 70),
    _SalesData('26', 70),
    _SalesData('27', 70),
    _SalesData('28', 70),
    _SalesData('29', 70),
    _SalesData('30', 70),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
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
                          child: Container(
                            child: SfCartesianChart(
                                primaryXAxis: CategoryAxis(),
                                // Chart title
                                title: ChartTitle(
                                  text: 'Daily sales analysis',
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                ),
                                // Enable legend
                                legend: Legend(isVisible: true),
                                // Enable tooltip
                                tooltipBehavior: TooltipBehavior(enable: true),
                                series: <ChartSeries<_SalesData, String>>[
                                  LineSeries<_SalesData, String>(
                                      dataSource: dataENd,
                                      xValueMapper: (_SalesData sales, _) =>
                                          sales.year,
                                      yValueMapper: (_SalesData sales, _) =>
                                          sales.sales,
                                      name: 'Sales',
                                      // Enable data label
                                      dataLabelSettings:
                                          DataLabelSettings(isVisible: true))
                                ]),
                          ))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class MonthlyCpi extends StatefulWidget {
  const MonthlyCpi({Key? key}) : super(key: key);

  @override
  State<MonthlyCpi> createState() => _MonthlyState();
}

class _MonthlyState extends State<MonthlyCpi> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40),
    _SalesData('Jun', 45),
    _SalesData('Jul', 88),
    _SalesData('Aug', 24),
    _SalesData('Sep', 62),
    _SalesData('Oct', 70),
    _SalesData('Nov', 34),
    _SalesData('Dec', 65),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
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
                          child: Container(
                            child: SfCartesianChart(
                                primaryXAxis: CategoryAxis(),
                                // Chart title
                                title: ChartTitle(
                                  text: ' yearly sales analysis',
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                ),
                                // Enable legend
                                legend: Legend(isVisible: true),
                                // Enable tooltip
                                tooltipBehavior: TooltipBehavior(enable: true),
                                series: <ChartSeries<_SalesData, String>>[
                                  LineSeries<_SalesData, String>(
                                      dataSource: data,
                                      xValueMapper: (_SalesData sales, _) =>
                                          sales.year,
                                      yValueMapper: (_SalesData sales, _) =>
                                          sales.sales,
                                      name: 'Sales',
                                      // Enable data label
                                      dataLabelSettings:
                                          DataLabelSettings(isVisible: true))
                                ]),
                          ))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class _SalesData {
//   _SalesData(this.year, this.sales);
//
//   final String year;
//   final double sales;
// }
