import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/splashScreen.dart';
import 'package:fooddeliveryapp/screens/landingScreen.dart';
import 'package:fooddeliveryapp/screens/loginScreen.dart';
import 'package:fooddeliveryapp/screens/resetPasswordScreen.dart';
import 'package:fooddeliveryapp/screens/signUpScreen.dart';
import 'package:fooddeliveryapp/styling/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Metropolis',
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.orange),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textTheme: const TextTheme(
          headline6: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
      home: const SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => LandingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ResetPasswordScreen.routeName: (context) => ResetPasswordScreen()
      },
    );
  }
}
