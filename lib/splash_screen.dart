
import 'dart:async';

import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding:  EdgeInsets.only(top: 200),
              child: Image(
                  height: 300,
                  width: 300,
                  image: AssetImage('images/calogo.png')),
            ),
          ),
          // Text(
          //   "Crystal",
          //   style: TextStyle(
          //       fontSize: 40,
          //       color: Colors.orange,
          //       fontWeight: FontWeight.bold),
          // ),
          // Text(
          //   "Solution",
          //   style: TextStyle(
          //       fontSize: 40,
          //       color: Colors.indigo[900],
          //       fontWeight: FontWeight.bold),
          // ),
        ],
      ),
    );
  }
}
