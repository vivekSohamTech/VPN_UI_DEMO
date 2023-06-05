import 'package:flutter/material.dart';
import 'package:flutter_app_icons/flutter_app_icons.dart';
import 'package:vpn_ui_demo/Fast_fox/primary_button.dart';
import 'package:vpn_ui_demo/preferences/preference_manager.dart';
import 'package:vpn_ui_demo/preferences/preferences_key.dart';

class ChangeAppIcon extends StatefulWidget {
  const ChangeAppIcon({super.key});

  @override
  State<ChangeAppIcon> createState() => _ChangeAppIconState();
}

class _ChangeAppIconState extends State<ChangeAppIcon> {
  final _flutterAppIconsPlugin = FlutterAppIcons();
  List imagefiles = [
    'app_insta.jpg',
    'app_tele.jpg',
    'app_whatsapp.jpg',
  ];
  int iconIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget buildIconTile(int index, String themeTxt) => Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () => setState(() => iconIndex = index),
            child: ListTile(
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Image.asset(
                  'assets/${imagefiles[index]}',
                  width: 45,
                  height: 45,
                ),
                title: Text(themeTxt, style: const TextStyle(fontSize: 25)),
                trailing: iconIndex == index
                    ? const Icon(
                        Icons.check_circle_rounded,
                        color: Colors.green,
                        size: 30,
                      )
                    : Icon(
                        Icons.circle_outlined,
                        color: Colors.grey.withOpacity(0.5),
                        size: 30,
                      )),
          ),
        );

    changeAppIcon() async {
      try {
        await _flutterAppIconsPlugin.setIcon(
            icon: imagefiles[iconIndex],
            oldIcon: AppPreference().getString(PreferencesKey.appLogo) == ''
                ? 'app_insta.jpg'
                : AppPreference().getString(PreferencesKey.appLogo));
        await AppPreference()
            .setString(PreferencesKey.appLogo, imagefiles[iconIndex]);
        debugPrint("App icon change successful");
      } catch (e) {
        debugPrint("Exception: ${e.toString()}");
        debugPrint("Failed to change app icon ");
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Change App Icon')),
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIconTile(0, 'red'),
              buildIconTile(1, 'dark'),
              buildIconTile(2, 'blue'),
              const SizedBox(
                height: 20,
              ),
              PrimaryBtn(
                  btnFun: () async {
                    await changeAppIcon();
                  },
                  btnText: 'Set as app icon'),
            ],
          )),
    );
  }
}
