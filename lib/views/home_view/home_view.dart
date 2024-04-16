import 'package:flutter/material.dart';
import 'package:thomas_app/helper/responsive.dart';
import 'package:thomas_app/views/home_view/desktop/home_desktop_view.dart';
import 'package:thomas_app/views/home_view/mobile/home_mobile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: HomeMobileView(),
      desktop: HomeDesktopView(),
    );
  }
}
