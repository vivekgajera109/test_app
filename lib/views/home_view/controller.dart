import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedTabIndex = 0.obs;
  RxList<String> tabBarList = [
    "Arbeitnehmer",
    "Arbeitgeber",
    "Temporärbüro",
  ].obs;
  void changeTabIndex(int index) {
    selectedTabIndex.value = index;
    update();
  }
}
