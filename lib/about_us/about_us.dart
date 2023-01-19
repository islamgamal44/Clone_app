// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:f2/about_us/resource/src.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  List<String> links = [
    "assets/images/ia.png",
    "assets/images/ib.png",
    "assets/images/ic.png",
  ];
  int indicator = 1;
  late CarouselController tabController;
  @override
  void initState() {
    super.initState();
    tabController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      reverse: false,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                      viewportFraction: 1.0,
                      onPageChanged: (i, _) {
                        setState(() {
                          indicator = i;
                        });
                      },
                      enlargeCenterPage: true,
                      height: 190),
                  carouselController: tabController,
                  items: links.map((item) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 2, color: Colors.black54)),
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment(-1.0, -1.0),
                  child: Text(
                    "About Us :",
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[800],
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        alignment: Alignment(-1.0, -1.0),
                        child: Text(
                          AppStrings.ijTitle,
                          style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        alignment: Alignment(-1.0, -1.0),
                        child: Text(
                          AppStrings.ijHeadTitle,
                          style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        alignment: Alignment(-1.0, -1.0),
                        child: Column(
                          children: [
                            Text(
                              AppStrings.ijBody,
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              AppStrings.ijBody1,
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              AppStrings.ijBody2,
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              AppStrings.ijBody3,
                              style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment(-1.0, -1.0),
                  child: Text(
                    "Contact Us :",
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[800],
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        alignment: Alignment(-1.0, -1.0),
                        child: Text(
                          AppStrings.ij1,
                          style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        alignment: Alignment(-1.0, -1.0),
                        child: Text(
                          AppStrings.ij2,
                          style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        alignment: Alignment(-1.0, -1.0),
                        child: Text(
                          AppStrings.ij3,
                          style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        alignment: Alignment(-1.0, -1.0),
                        child: Text(
                          AppStrings.ij4,
                          style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        alignment: Alignment(-1.0, -1.0),
                        child: Text(
                          AppStrings.ij5,
                          style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        alignment: Alignment(-1.0, -1.0),
                        child: Text(
                          AppStrings.ij6,
                          style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
