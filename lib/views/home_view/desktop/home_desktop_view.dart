import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:thomas_app/common_widget/app_bar.dart';
import 'package:thomas_app/common_widget/button.dart';
import 'package:thomas_app/common_widget/tab_bar.dart';
import 'package:thomas_app/constant/app_colors.dart';
import 'package:thomas_app/constant/app_style.dart';
import 'package:thomas_app/constant/static_decoration.dart';
import 'package:thomas_app/views/home_view/controller.dart';
import 'tab_bar_view/arbeitgeber_desktop_view.dart';
import 'tab_bar_view/arbeitnehmer_desktop_view.dart';
import 'tab_bar_view/temporärbüro_desktop_view.dart';

class HomeDesktopView extends StatefulWidget {
  const HomeDesktopView({super.key});

  @override
  State<HomeDesktopView> createState() => _HomeDesktopViewState();
}

class _HomeDesktopViewState extends State<HomeDesktopView> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _headerView(),
            height10,
            commonTabBar(homeController: homeController),
            customHeight(20),
            Obx(
              () => [
                const ArbeitnehmerDesktopView(),
                const ArbeitgeberDesktopView(),
                const TemporarburoDesktopView(),
              ][homeController.selectedTabIndex.value],
            ),
            customHeight(20),
          ],
        ),
      ),
    );
  }

  Widget _headerView() {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        height: 500,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              appPrimaryColor.withOpacity(0.3),
              appTextColor.withOpacity(0.3),
            ],
          ),
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Deine Job\nwebsite",
                      style: AppTextStyle.regularBold36
                          .copyWith(fontSize: 65, color: appBlackColor),
                    ),
                    height10,
                    commonButton()
                  ],
                ),
              ),
              Expanded(
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: appWhiteColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: SvgPicture.asset(
                      "assets/svg/undraw_agreement_aajr.svg",
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
