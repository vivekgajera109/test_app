import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:thomas_app/constant/app_colors.dart';
import 'package:thomas_app/constant/app_style.dart';
import 'package:thomas_app/constant/static_decoration.dart';

class ArbeitnehmerView extends StatelessWidget {
  const ArbeitnehmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Drei einfache Schritte zu deinem neuen Job",
            style: AppTextStyle.normalRegularBold20.copyWith(
              color: appGrayColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        height20,
        _stepOne(),
        _stepTwo(),
        _stepThree()
      ],
    );
  }

  Widget _stepThree() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 270,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: 20,
              bottom: 0,
              child: Image.asset(
                "assets/png/arbeitnehmer_step_three.png",
                height: 144,
              ),
            ),
            Positioned(
              left: 35,
              top: -20,
              child: Row(
                children: [
                  Text(
                    "3. ",
                    style: AppTextStyle.normalRegularBold42
                        .copyWith(fontSize: 130, color: appGrayColor),
                  ),
                  Text(
                    "Mit nur einem Klick\nbewerben",
                    style: AppTextStyle.normalSemiBold15
                        .copyWith(color: appGrayColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _stepOne() {
    return SizedBox(
      height: 254,
      child: Stack(
        children: [
          Positioned(
            right: 20,
            child: Image.asset(
              "assets/png/arbeitnehmer_step_one.png",
              height: 144,
            ),
          ),
          Positioned(
            left: 10,
            bottom: 5,
            child: RichText(
              text: TextSpan(
                text: "1. ",
                style: AppTextStyle.normalRegularBold42
                    .copyWith(fontSize: 130, color: appGrayColor),
                children: [
                  TextSpan(
                    text: "Erstellen dein Lebenslauf",
                    style: AppTextStyle.normalSemiBold15
                        .copyWith(color: appGrayColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _stepTwo() {
    return Column(
      children: [
        ClipPath(
          clipper: WaveClipperTwo(reverse: true),
          child: Container(
            height: 50,
            color: selectedTabIndex.withOpacity(0.5),
          ),
        ),
        Container(
          color: selectedTabIndex.withOpacity(0.5),
          height: 300,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                right: 30,
                bottom: 0,
                child: Image.asset(
                  "assets/png/arbeitnehmer_step_two.png",
                  height: 144,
                ),
              ),
              Positioned(
                top: 0,
                left: 30,
                child: RichText(
                  text: TextSpan(
                    text: "2. ",
                    style: AppTextStyle.normalRegularBold42
                        .copyWith(fontSize: 130, color: appGrayColor),
                    children: [
                      TextSpan(
                        text: "Erstellen dein Lebenslauf",
                        style: AppTextStyle.normalSemiBold15
                            .copyWith(color: appGrayColor),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            height: 50,
            color: selectedTabIndex.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
