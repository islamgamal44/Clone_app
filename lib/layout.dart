// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';

import 'core.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${now.hour}:${now.minute}',
                                style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                  fontSize: 45,
                                  color: Colors.black54,
                                )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Estimated time of delivery",
                                style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment(-1.0, -1.0),
                                child: Text(
                                  "Order Progress",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                          fontSize: 22,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TimelineTile(
                                oppositeContents: Card(
                                  elevation: 0.5,
                                  child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      '2:27 PM',
                                      style: GoogleFonts.rubik(
                                          textStyle: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                                contents: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Shaormeria C&A Decembrie\n has confirmed your order',
                                    style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                node: TimelineNode(
                                  indicator: DotIndicator(
                                    size: 20,
                                    color: Colors.green,
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                  // startConnector: SolidLineConnector(
                                  //   color: Colors.green,
                                  // ),
                                  endConnector: SizedBox(
                                    height: 30,
                                    child: SolidLineConnector(
                                      space: 60,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                              TimelineTile(
                                oppositeContents: Card(
                                  elevation: 0.5,
                                  child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      '2:35 PM',
                                      style: GoogleFonts.rubik(
                                          textStyle: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                                contents: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Your order is ready for pickup',
                                    style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                node: TimelineNode(
                                  indicator: DotIndicator(
                                    size: 20,
                                    color: Colors.green,
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                  startConnector: SolidLineConnector(
                                    color: Colors.green,
                                  ),
                                  endConnector: SizedBox(
                                    height: 30,
                                    child: SolidLineConnector(
                                      space: 60,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                              TimelineTile(
                                contents: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Looking For a Courier',
                                    style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                node: TimelineNode(
                                  indicator: OutlinedDotIndicator(
                                      size: 20,
                                      color: Colors.green,
                                      child: Center(child: IjCircle())),
                                  startConnector: SolidLineConnector(
                                    color: Colors.green,
                                  ),
                                  endConnector: SizedBox(
                                    height: 30,
                                    child: SolidLineConnector(
                                      endIndent: 5,
                                      space: 60,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                ),
                              ),
                              TimelineTile(
                                contents: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'The Courier is on their way to shaormeria C&A 1 Decembrie.',
                                    style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                node: TimelineNode(
                                  indicator: DotIndicator(
                                    size: 12,
                                    color: Colors.grey[300],
                                  ),
                                  startConnector: SolidLineConnector(
                                    indent: 5,
                                    color: Colors.grey[300],
                                  ),
                                  endConnector: SolidLineConnector(
                                    endIndent: 5,
                                    space: 60,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                              TimelineTile(
                                contents: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'The Courier is on their way to you.',
                                    style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                node: TimelineNode(
                                  indicator: DotIndicator(
                                    size: 12,
                                    color: Colors.grey[300],
                                  ),
                                  startConnector: SolidLineConnector(
                                    indent: 5,
                                    color: Colors.grey[300],
                                  ),
                                  endConnector: SizedBox(
                                    height: 50,
                                    child: SolidLineConnector(
                                      endIndent: 5,
                                      space: 60,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Text(
                              "Order Info",
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  "Delivered",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  '${now.day}, ${now.month}, ${now.year} ${now.hour}:${now.minute}',
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black54,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Text(
                              "Order #RM16V",
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "1 x Chicken Pizza",
                                      style: GoogleFonts.rubik(
                                          textStyle: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black54,
                                      )),
                                    ),
                                    Text(
                                      "    30cm (15,00 lei)",
                                      style: GoogleFonts.rubik(
                                          textStyle: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      )),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  "54,00 lei",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.all(15),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey[300],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Row(
                              children: [
                                Text(
                                  "1 x Sweet Ketchup",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  )),
                                ),
                                Spacer(),
                                Text(
                                  "4,00 lei",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.all(15),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey[300],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Row(
                              children: [
                                Text(
                                  "1 x Fries",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  )),
                                ),
                                Spacer(),
                                Text(
                                  "12,00 lei",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.all(15),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Row(
                              children: [
                                Text(
                                  "Menu discount",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  )),
                                ),
                                Spacer(),
                                Text(
                                  "-21,00 lei",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Row(
                              children: [
                                Text(
                                  "Subtotal",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Spacer(),
                                Text(
                                  "49,00 lei",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Row(
                              children: [
                                Text(
                                  "Delivery fee",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  )),
                                ),
                                Spacer(),
                                Text(
                                  "7,60 lei",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.all(15),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey[300],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Row(
                              children: [
                                Text(
                                  "Total",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Spacer(),
                                Text(
                                  "56,60 lei",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    child:
                                        Image.asset("assets/images/img.png")),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Online Payment",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                  )),
                                ),
                                Spacer(),
                                Text(
                                  "56,60 lei",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.all(15),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Text(
                              "Delivery address",
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, right: 15, left: 15),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Text(
                              "Strada liviu Rebreanu",
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                              )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, right: 15, left: 15),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Text(
                              "N20 floor 03 ap 09",
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                              )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, right: 15, left: 15),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Text(
                              "On the door",
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                              )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.all(15),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Text(
                              "Why Not Resto",
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: Row(
                              children: [
                                Text(
                                  "View menu",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  )),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.all(15),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30)),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  "Order again",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30)),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  "Order again",
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
