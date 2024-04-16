import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thomas_app/constant/app_colors.dart';
import 'package:thomas_app/constant/app_style.dart';
import 'package:thomas_app/views/home_view/controller.dart';

Obx commonTabBar({required HomeController homeController}) {
  return Obx(() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 50,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                homeController.tabBarList.length,
                (index) => GestureDetector(
                  onTap: () {
                    homeController.changeTabIndex(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(index == 0 ? 12 : 0),
                        right: Radius.circular(index == 2 ? 12 : 0),
                      ),
                      border: Border.all(
                          color: homeController.selectedTabIndex.value == index
                              ? tabBarColor
                              : borderColor),
                      color: homeController.selectedTabIndex.value == index
                          ? tabBarColor
                          : Colors.transparent,
                    ),
                    height: 40,
                    width: 160,
                    child: Center(
                      child: Text(
                        homeController.tabBarList[index],
                        style: AppTextStyle.regularBold15.copyWith(
                            color:
                                homeController.selectedTabIndex.value == index
                                    ? selectedTabIndex
                                    : appTextColor),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  });
}
