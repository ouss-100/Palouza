import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palouza/controller/onboarding_controller.dart';
import 'package:palouza/core/constant/color.dart';
import 'package:palouza/data/datasource/static/static.dart';

class Dots extends StatelessWidget {
  const Dots({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImpl>(
        builder: (controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                  onBoardingData.length,
                  (index) => AnimatedContainer(
                        margin: const EdgeInsets.only(right: 5),
                        duration: const Duration(milliseconds: 400),
                        width: controller.currentIndex == index ? 10 : 6,
                        height: 6,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      ))
            ]));
  }
}
