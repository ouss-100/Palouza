import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palouza/core/constant/route.dart';
import 'package:palouza/view/screen/auth/login.dart';
import 'package:palouza/view/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'onboarding', // Set initialRoute to 'onboarding'
      routes: {
        'login': (context) => const Login(), // Define your routes correctly
        'onboarding': (context) => const OnBoarding(),
      },
    );
  }
}
