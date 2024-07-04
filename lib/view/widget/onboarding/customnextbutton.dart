import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palouza/controller/onboarding_controller.dart';
import 'package:palouza/core/constant/color.dart';

class CustomNextButton extends GetView<OnboardingControllerImpl> {
  const CustomNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 50,
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          onPressed: () {
            controller.next();
          },
          color: AppColors.primaryColor,
          child: const Text('Continue'),
        ));
  }
}
