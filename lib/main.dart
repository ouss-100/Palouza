import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palouza/core/constant/color.dart';
import 'package:palouza/core/localization/changelocal.dart';
import 'package:palouza/core/localization/translation.dart';
import 'package:palouza/core/services/services.dart';
import 'package:palouza/routes.dart';
import 'package:palouza/view/screen/language.dart';
import 'package:palouza/view/screen/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTraslation(),
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
          fontFamily: 'PlayfairDisplay',
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.black),
            bodyLarge: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                height: 1.5,
                color: AppColors.grey),
          )),
      home: const Language(),
      routes: routes,
    );
  }
}
