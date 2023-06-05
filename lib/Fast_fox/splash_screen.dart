import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn_ui_demo/Fast_fox/fasfox_cnt.dart';
import 'package:vpn_ui_demo/constant.dart';

import '../preferences/preference_manager.dart';
import '../preferences/preferences_key.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final cnt = Get.put(FasFoxCnt());
  @override
  void initState() {
    cnt.isDark.value = AppPreference().getBool(PreferencesKey.themeMode);
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const FasFox(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cnt = Get.put(FasFoxCnt());
    return Obx(
      () => Scaffold(
        backgroundColor: cnt.isDark.value ? appBlackColor : appBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/world.png'),
            const SizedBox(
              height: 15,
            ),
            Text(
              'FasFox',
              style: GoogleFonts.syneMono(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: cnt.isDark.value ? appWhiteColor : appPrimaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
