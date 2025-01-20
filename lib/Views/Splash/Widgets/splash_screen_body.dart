import 'package:clinic_booking/Core/Constants/colors.dart';
import 'package:clinic_booking/Core/Utils/app_images.dart';
import 'package:clinic_booking/Views/OnBoarding/Presentation/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Column(
      children: [Image.asset(Assets.imagesLogo), 
      Container(
        height: h*.2,
        width: w,
        decoration: BoxDecoration(
          color: kveryWhite,
          boxShadow: [
        BoxShadow(
          offset: Offset(0, 1),
          color: kveryWhite,
          blurRadius: 20,
        )
          ]
        ),
      )],
    );
  }

  void excuteNavigation() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, OnBoardingScreen.onBoardingRoute);
  }
}
