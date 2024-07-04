import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palouza/controller/onboarding_controller.dart';
import 'package:palouza/data/datasource/static/static.dart';

class CustomSlider extends GetView<OnboardingControllerImpl> {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) => Column(children: [
              Text(
                onBoardingData[index].title!,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 50),
              Image.asset(onBoardingData[index].image!,
                  height: 300, width: 300, fit: BoxFit.fill),
              Text(onBoardingData[index].body!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),
            ]));
  }
}
