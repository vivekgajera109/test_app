import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:thomas_app/common_widget/app_bar.dart';
import 'package:thomas_app/common_widget/button.dart';
import 'package:thomas_app/common_widget/tab_bar.dart';
import 'package:thomas_app/constant/app_colors.dart';
import 'package:thomas_app/constant/app_style.dart';
import 'package:thomas_app/constant/static_decoration.dart';
import 'package:thomas_app/views/home_view/controller.dart';
import 'package:thomas_app/views/home_view/mobile/tab_bar_view/arbeitgeber_view.dart';
import 'package:thomas_app/views/home_view/mobile/tab_bar_view/arbeitnehmer_view.dart';
import 'package:thomas_app/views/home_view/mobile/tab_bar_view/tempor%C3%A4rb%C3%BCro_view.dart';

class HomeMobileView extends StatefulWidget {
  const HomeMobileView({super.key});

  @override
  State<HomeMobileView> createState() => _HomeMobileViewState();
}

class _HomeMobileViewState extends State<HomeMobileView> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: commonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _headerView(),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                color: appWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-1, 0),
                    spreadRadius: 3,
                    blurRadius: 6,
                  )
                ],
              ),
              child: Column(
                children: [
                  height20,
                  commonButton(),
                  customHeight(90),
                  commonTabBar(homeController: homeController),
                  customHeight(20),
                  Obx(
                    () => [
                      const ArbeitnehmerView(),
                      const ArbeitgeberView(),
                      const TemporarburoView(),
                    ][homeController.selectedTabIndex.value],
                  ),
                  customHeight(20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _headerView() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Text(
            'Deine Job website',
            style:
                AppTextStyle.normalRegularBold42.copyWith(color: appBlackColor),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 300,
          child: SvgPicture.asset(
            "assets/svg/undraw_agreement_aajr.svg",
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
      ],
    );
  }
}
