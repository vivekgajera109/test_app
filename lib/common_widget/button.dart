import 'package:flutter/material.dart';
import 'package:thomas_app/constant/app_colors.dart';
import 'package:thomas_app/constant/app_style.dart';

Widget commonButton() {
  return GestureDetector(
    child: Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      constraints: BoxConstraints(maxWidth: 350),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(colors: [appTextColor, appPrimaryColor]),
      ),
      child: Center(
        child: Text(
          "Kostenlos Registrieren",
          style: AppTextStyle.normalSemiBold15
              .copyWith(fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
