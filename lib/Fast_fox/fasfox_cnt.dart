import 'package:flutter/services.dart';
import 'package:get/get.dart';

class FasFoxCnt extends GetxController {
  @override
  void onInit() {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.onInit();
  }

  RxBool isDark = false.obs;
}
