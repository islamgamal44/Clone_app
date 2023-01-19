// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Daily extends StatefulWidget {
  const Daily({Key? key}) : super(key: key);

  @override
  State<Daily> createState() => _DailyState();
}

class _DailyState extends State<Daily> {
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
