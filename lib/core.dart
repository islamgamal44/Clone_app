// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IjCircle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IjCircle();
  }
}

class _IjCircle extends State<IjCircle> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationcontroller;

  @override
  void initState() {
    animationcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    animationcontroller.repeat();

    animation = Tween<double>(begin: 0, end: 250).animate(animationcontroller);

    animation.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 20,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 1),
              color: Colors.green,
            ),
            height: animation.value,
            width: animation.value,
          ),
        ),
      ),
    );
  }
}
