import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn_ui_demo/Fast_fox/change_app_icon.dart';
import 'package:vpn_ui_demo/Fast_fox/fasfox_cnt.dart';

import '../constant.dart';
import '../preferences/preference_manager.dart';
import '../preferences/preferences_key.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cnt = Get.put(FasFoxCnt());
    return Obx(() => SafeArea(
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Drawer(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      color:
                          cnt.isDark.value ? appBlackColor : appBackgroundColor,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/world.png',
                            scale: 3.5,
                          ),
                          Text(
                            'Fasfox',
                            style: GoogleFonts.syneMono(
                                fontSize: 30,
                                color: cnt.isDark.value
                                    ? appWhiteColor
                                    : appPrimaryColor),
                          )
                        ],
                      ),
                    ),
                    // const Divider(
                    //   color: Color.fromARGB(255, 9, 71, 185),
                    // ),
                    Container(
                      height: Get.height * 0.005,
                      color: cnt.isDark.value ? appWhiteColor : null  ,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    commonListTile(
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                        iconData: Icons.language,
                        press: () {},
                        title: 'Locations'),
                    appDivider(),
                    commonListTile(
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                        press: () {},
                        iconData: Icons.settings,
                        title: 'Settings'),

                    appDivider(),
                    commonListTile(
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                        press: () {},
                        iconData: Icons.diversity_3_outlined,
                        title: 'Invite Friends'),
                    appDivider(),
                    commonListTile(
                      press: () {},
                      iconData:
                          cnt.isDark.value ? Icons.dark_mode : Icons.light_mode,
                      title: 'Change theme',
                      trailing: CupertinoSwitch(
                        thumbColor:
                            cnt.isDark.value ? Colors.grey : Colors.orange,
                        value: cnt.isDark.value,
                        activeColor:
                            cnt.isDark.value ? appWhiteColor : Colors.grey,
                        onChanged: (bool value) {
                          cnt.isDark.value = value;
                          AppPreference().setBool(
                              PreferencesKey.themeMode, cnt.isDark.value);
                          Get.changeThemeMode(
                              AppPreference().getBool(PreferencesKey.themeMode)
                                  ? ThemeMode.dark
                                  : ThemeMode.light);
                        },
                      ),
                    ),
                    appDivider(),
                    commonListTile(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChangeAppIcon(),
                            ));
                      },
                      iconData: Icons.widgets,
                      title: 'Change App Icon',
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    )
                  ],
                ),
              )),
        ));
  }

  Divider appDivider() => const Divider();

  InkWell commonListTile(
      {required Function() press,
      required IconData iconData,
      required String title,
      required Widget trailing}) {
    return InkWell(
        onTap: press,
        child: ListTile(
            leading: Icon(
              iconData,
              // color: appPrimaryColor,
            ),
            title: Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
            trailing: trailing));
  }
}
