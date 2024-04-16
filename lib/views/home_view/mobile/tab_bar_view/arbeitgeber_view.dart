import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:thomas_app/constant/app_colors.dart';
import 'package:thomas_app/constant/app_style.dart';
import 'package:thomas_app/constant/static_decoration.dart';

class ArbeitgeberView extends StatelessWidget {
  const ArbeitgeberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Drei einfache Schritte zu deinem neuen Mitarbeiter",
            style: AppTextStyle.normalRegularBold20.copyWith(
              color: appGrayColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        height20,
        _stepOne(),
        _stepTwo(),
        _stepThree(),
        customHeight(40)
      ],
    );
  }

  Widget _stepOne() {
    return SizedBox(
      height: 254,
      child: Stack(
        clipBehavior: Clip.none,
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
            bottom: -20,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "1. ",
                  style: AppTextStyle.normalRegularBold42
                      .copyWith(fontSize: 130, color: appGrayColor),
                ),
                Text(
                  "Erstellen dein\nUnternehmenspofil",
                  style: AppTextStyle.normalSemiBold15
                      .copyWith(color: appGrayColor),
                ),
              ],
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
                  "assets/png/arbeitgeber_step_two.png",
                  height: 189,
                ),
              ),
              Positioned(
                top: 10,
                left: 40,
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

  Widget _stepThree() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 350,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: 20,
              left: 20,
              bottom: 0,
              child: Image.asset(
                "assets/png/arbeitgeber_step_three.png",
                height: 189,
              ),
            ),
            Positioned(
              top: -10,
              left: 35,
              child: Row(
                children: [
                  Text(
                    "3. ",
                    style: AppTextStyle.normalRegularBold42
                        .copyWith(fontSize: 130, color: appGrayColor),
                  ),
                  Text(
                    "Wähle deinen\nneuen Mitarbeiter aus",
                    style: AppTextStyle.normalSemiBold15
                        .copyWith(color: appGrayColor),
                  ),
                ],
              ),
            )

            // Positioned(
            //   left: 20,
            //   top: -20,
            //   child: RichText(
            //     text: TextSpan(
            //       text: "3. ",
            // style: AppTextStyle.normalRegularBold42
            //     .copyWith(fontSize: 130, color: appGrayColor),
            //       children: [

            // TextSpan(
            //   text: "Mit nur einem Klick bewerben",
            //   style: AppTextStyle.normalSemiBold15
            //       .copyWith(color: appGrayColor),
            // ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
