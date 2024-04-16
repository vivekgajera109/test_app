import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:thomas_app/constant/app_colors.dart';
import 'package:thomas_app/constant/app_style.dart';
import 'package:thomas_app/constant/static_decoration.dart';

class ArbeitnehmerDesktopView extends StatefulWidget {
  const ArbeitnehmerDesktopView({super.key});

  @override
  State<ArbeitnehmerDesktopView> createState() =>
      _ArbeitnehmerDesktopViewState();
}

class _ArbeitnehmerDesktopViewState extends State<ArbeitnehmerDesktopView> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
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
        Padding(
          padding: EdgeInsets.only(right: w * 0.3),
          child: _stepOne(context),
        ),
        Padding(
          padding: EdgeInsets.only(right: w * 0.3),
          child: Image.asset(
            "assets/png/arrow1.png",
            width: w * 0.6,
            height: h * 0.4,
          ),
        ),
        _stepTwo(context),
        Padding(
          padding: EdgeInsets.only(right: w * 0.2),
          child: Image.asset(
            "assets/png/arrow2.png",
            width: w * 0.7,
            height: h * 0.3,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: w * 0.25),
          child: _stepThree(context),
        ),
      ],
    );
  }

  Widget _stepThree(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: "3. ",
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
          customWidth(30),
          Image.asset(
            "assets/png/arbeitnehmer_step_three.png",
            height: 144,
          ),
        ],
      ),
    );
  }

  Widget _stepOne(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
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
          customWidth(30),
          Image.asset(
            "assets/png/arbeitnehmer_step_one.png",
            height: 144,
          ),
        ],
      ),
    );
  }

  Widget _stepTwo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipPath(
          clipper: WaveClipperOne(reverse: true),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  appTextColor.withOpacity(0.2),
                  appPrimaryColor.withOpacity(0.2),
                ],
              ),
            ),
            // color: selectedTabIndex.withOpacity(0.5),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                appTextColor.withOpacity(0.2),
                appPrimaryColor.withOpacity(0.2),
              ],
            ),
          ),
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/png/arbeitnehmer_step_two.png",
                height: 144,
              ),
              customWidth(30),
              RichText(
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
            ],
          ),
        ),
        ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  appTextColor.withOpacity(0.2),
                  appPrimaryColor.withOpacity(0.2),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
