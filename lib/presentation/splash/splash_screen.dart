import 'package:flutter/material.dart';
import 'package:store_app/presentation/resources/assets_manager.dart';
import 'package:store_app/presentation/resources/color_manager.dart';
import 'package:store_app/presentation/resources/constants_manager.dart';
import 'package:store_app/presentation/resources/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToOnbording();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(
        child: Image(image: AssetImage(ImageAssets.splashLogo)),
      ),
    );
  }

   void navigateToOnbording() {
    Future.delayed(
      (const Duration(seconds:AppConstants.splashDeley)),
      () {
        Navigator.pushReplacementNamed(context, Routes.onboardingRoute);
      },
    );
  }
}
