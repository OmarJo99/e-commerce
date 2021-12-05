import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce/Layout/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modules/Login&Register/LoginScreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          curve: Curves.decelerate,
          duration: 2500,
          splash: Image.asset(
            'assets/1.png',
          ),
          nextScreen: Loginscreen()),
    );
  }
}
