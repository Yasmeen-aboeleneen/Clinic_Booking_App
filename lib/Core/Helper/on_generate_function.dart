import 'package:clinic_booking/Views/Splash/Presentation/splash_screen.dart';
import 'package:flutter/material.dart';
 

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
      
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}