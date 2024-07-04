import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palouza/controller/onboarding_controller.dart';
import 'package:palouza/view/widget/onboarding/customnextbutton.dart';
import 'package:palouza/view/widget/onboarding/custompreviusbutton.dart';
import 'package:palouza/view/widget/onboarding/customslider.dart';
import 'package:palouza/view/widget/onboarding/dots.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImpl());
    return const Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(flex: 3, child: CustomSlider()),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Dots(),
              Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [CustomPreviousButton(), CustomNextButton()],
              )
            ],
          ),
        ),
      ],
    )));
  }
}
