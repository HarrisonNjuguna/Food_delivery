import 'dart:async';
import 'package:flutter/material.dart';
import './landingScreen.dart';
import '../util/assistant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(Duration(milliseconds: 4000), () {
      //navigate to the next screen
      Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Assistant.getScreenWidth(context),
        height: Assistant.getScreenHeight(context),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Assistant.getAssetName('splashIcon.png', 'virtual'),
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Assistant.getAssetName('MealMonkeyLogo.png', 'virtual'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
