import 'package:flutter/material.dart';
import 'package:store_app/presentation/details/details_screen.dart';
import 'package:store_app/presentation/forget_password/forget_password_screen.dart';
import 'package:store_app/presentation/home/home_screen.dart';
import 'package:store_app/presentation/login/login_screen.dart';
import 'package:store_app/presentation/register/register_screen.dart';
import 'package:store_app/presentation/resources/String_manager.dart';
import 'package:store_app/presentation/splash/splash_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginhRoute = "login";
  static const String registerRoute = "register";
  static const String homeRoute = "home";
  static const String detailsRoute = "details";
  static const String forgetPasswordRoute = "forgetPassword";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return navigatorpage(screen: const SplashScreen());
      case Routes.loginhRoute:
        return navigatorpage(screen: const LoginScreen());
      case Routes.registerRoute:
        return navigatorpage(screen: const RegisterScreen());
      case Routes.forgetPasswordRoute:
        return navigatorpage(screen: const ForgetPasswordScreen());
      case Routes.homeRoute:
        return navigatorpage(screen: const HomeScreen());
      case Routes.detailsRoute:
        return navigatorpage(screen: const DetailsScreen());
      default:
        return unDefinedRoute();
    }
  }

  static MaterialPageRoute<dynamic> navigatorpage({required Widget screen}) {
    return MaterialPageRoute(
      builder: (context) => screen,
    );
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text(StringApp.noFoundRoute),
        ),
        body: const Center(
          child: Text(StringApp.noFoundRoute),
        ),
      ),
    );
  }
}
