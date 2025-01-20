import 'package:clinic_booking/Core/Constants/colors.dart';
import 'package:clinic_booking/Views/Splash/Widgets/splash_screen_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
 static const routeName = "splash";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimary,
      body: SplashScreenBody(),
    );
  }
}