import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palouza/controller/onboarding_controller.dart';
import 'package:palouza/core/constant/color.dart';

class CustomPreviousButton extends GetView<OnboardingControllerImpl> {
  const CustomPreviousButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 50,
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          onPressed: () {
            controller.prev();
          },
          color: AppColors.grey,
          child: const Text('previous'),
        ));
  }
}
