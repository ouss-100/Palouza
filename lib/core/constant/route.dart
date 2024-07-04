import 'package:flutter/material.dart';
import 'package:palouza/view/screen/auth/login.dart';
import 'package:palouza/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'login': (context) => const Login(),
  'onboarding': (context) => const OnBoarding(),
};

class AppRoutes {
  static const String login = '/login';
  static const String onboarding = '/onboarding';
}
