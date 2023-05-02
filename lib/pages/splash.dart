import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mr_mrs_wear/pages/onboard/onboard.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 15), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoard()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    TextStyle _titleStyle = GoogleFonts.acme(
        fontSize: 19, fontWeight: FontWeight.normal);

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * 0.03,
            right: 0,
            child: Image.asset(
              'images/fl.png',
              width: screenWidth * 0.4,
              height: screenWidth * 0.4,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logoo.png',
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.4,
                ),
                const SizedBox(height: 15),
                Text(
                  'TOGETHER AS ONE',
                  style: _titleStyle,
                ),
                const SizedBox(height: 20),
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFE9B3A3)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
