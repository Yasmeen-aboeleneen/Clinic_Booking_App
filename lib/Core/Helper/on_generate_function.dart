import 'package:clinic_booking/Views/OnBoarding/Presentation/on_boarding_screen.dart';
import 'package:clinic_booking/Views/Splash/Presentation/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());

    case OnBoardingScreen.onBoardingRoute:
      return MaterialPageRoute(builder: (context) => const OnBoardingScreen());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
