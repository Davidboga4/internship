import 'dart:async';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  bool img1 = false;
  bool img2 = false;
  bool img3 = false;
  bool img4 = false;
  bool img5 = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 600), (){
      setState(() {
        img1 = true;
      });
    });
    Timer(Duration(milliseconds: 900), (){
      setState(() {
        img2 = true;
      });
    });
    Timer(Duration(milliseconds: 1200), (){
      setState(() {
        img3 = true;
      });
    });
    Timer(Duration(milliseconds: 1800), (){
      setState(() {
        img4 = true;
      });
    });
    Timer(Duration(milliseconds: 2400), (){
      setState(() {
        img5 = true;
      });
    });
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          // color: Colors.orange,
          child: Stack(
            children: [
              animateImages('assets/blue_icon.png', img1, 0.0, 100.0, 90.0, 0.0, screenWidth * 0.5),
              animateImages('assets/purple_icon.png', img2, 70.0, 00.0, 130.0, 0.0, screenWidth * 0.6),
              animateImages('assets/orange_icon.png', img3, 0.0, 90.0, 0.0, 30.0, screenWidth * 0.45),
              animateImages('assets/red_icon.png', img4, 70.0, 0.0, 0.0, 60.0, screenWidth * 0.6),
              animateImages('assets/White_Logo_text.png', img5, 50.0, 0.0, 0.0, 0.0, screenWidth * 0.5),
            ],
          ),
        ),
      ),
    );
  }

  Widget animateImages(String imagePath, boolVar, double l, double r, double t, double b, double width){
    return new AnimatedOpacity(
      opacity: boolVar ? 1.0 : 0.0,
      duration: Duration(milliseconds: 500),
      child: Container(
        width: width,
        margin: EdgeInsets.only(left: l, right: r, top: t, bottom: b),
        decoration: BoxDecoration(
            // color: Colors.orange,
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.fitWidth)),
      ),
    );
  }
}
