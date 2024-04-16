import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thomas_app/constant/app_colors.dart';
import 'package:thomas_app/constant/app_style.dart';

AppBar commonAppBar() {
  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarColor: appPrimaryColor,
      systemNavigationBarColor: appWhiteColor,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: false,
      systemNavigationBarContrastEnforced: false,
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(12),
      ),
    ),
    toolbarHeight: 8,
    backgroundColor: appPrimaryColor,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(67),
      child: Container(
        height: 67,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
          color: appWhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 1),
              spreadRadius: 3,
              blurRadius: 6,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: AppTextStyle.normalRegularBold15.copyWith(
                      fontWeight: FontWeight.w600, color: appTextColor),
                ))
          ],
        ),
      ),
    ),
  );
}
