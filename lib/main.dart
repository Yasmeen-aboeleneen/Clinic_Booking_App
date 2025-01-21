import 'package:clinic_booking/Core/Helper/on_generate_function.dart';
import 'package:clinic_booking/Views/Splash/Presentation/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emma Clincs',
       onGenerateRoute: onGenerateRoute,
       initialRoute: SplashScreen.routeName,
    );
  }
}

 
