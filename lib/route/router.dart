import 'package:busquedaapp/route/routing_constants.dart';
import 'package:busquedaapp/screens/dashboard_screen.dart';
import 'package:busquedaapp/screens/signin_screen.dart';
import 'package:busquedaapp/screens/signup_screen.dart';
import 'package:busquedaapp/screens/undefined_screen.dart';
import 'package:busquedaapp/screens/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case splashScreenRoute:
      return MaterialPageRoute(builder: (context) => SplashScreen());

    case signInScreenRoute:
      return MaterialPageRoute(builder: (context) => SignInScreen());

    case signUpScreenRoute:
      return MaterialPageRoute(builder: (context) => SignUpScreen());

    case dashboardScreenRoute:
      return MaterialPageRoute(builder: (context) => DashboardScreen());

    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedView(
                name: settings.name!,
              ));
  }
}