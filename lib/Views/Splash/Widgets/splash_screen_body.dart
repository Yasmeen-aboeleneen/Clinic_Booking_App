import 'package:clinic_booking/Views/OnBoarding/Presentation/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:clinic_booking/Core/Constants/colors.dart';
import 'package:clinic_booking/Core/Utils/app_images.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    excuteNavigation();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat();

    _animation = Tween<double>(begin: 1.0, end: -1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesLogo),
          Container(
            height: h * 0.1,
            width: w,
            decoration: BoxDecoration(
              color: kPrimary2,
              boxShadow: [
                BoxShadow(
                  color: kveryWhite,
                  blurRadius: 50,
                  spreadRadius: 2,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(_animation.value * w, 0),
                  child: OverflowBar(
                    alignment: MainAxisAlignment.center,
                    overflowAlignment: OverflowBarAlignment.center,
                    children: [
                      Text(
                        'Emma Clinics',
                        style: GoogleFonts.merriweather(
                            color: kveryWhite,
                            fontSize: w * 0.08,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(width: w * 0.06),
                      Text(
                        'Discover Your Inner Beauty',
                        style: GoogleFonts.merriweather(
                          color: kveryWhite,
                          fontSize: w * 0.05,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void excuteNavigation() async {
    await Future.delayed(const Duration(seconds: 12));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OnBoardingScreen(),
      ),
    );
  }
}
