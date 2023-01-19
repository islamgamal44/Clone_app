// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'cpi_widget/cpi_widget.dart';

class PercentIndicator extends StatefulWidget {
  const PercentIndicator({Key? key}) : super(key: key);

  @override
  State<PercentIndicator> createState() => _PercentIndicatorState();
}

class _PercentIndicatorState extends State<PercentIndicator> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40),
    _SalesData('Jun', 45),
  ];
  List<_SalesData> dataENd = [
    _SalesData('Jul', 88),
    _SalesData('Aug', 24),
    _SalesData('Sep', 62),
    _SalesData('Oct', 70),
    _SalesData('Nov', 70),
    _SalesData('Dec', 70),
  ];
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
                              text: 'First Half yearly sales analysis',
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
                              text: 'Second Half yearly sales analysis',
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
        ),
      ]),
    ));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
