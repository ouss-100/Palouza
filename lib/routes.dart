import 'package:flutter/material.dart';
import 'package:palouza/core/constant/routes_names.dart';
import 'package:palouza/view/screen/auth/login.dart';
import 'package:palouza/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onboarding: (context) => const OnBoarding(),
};
