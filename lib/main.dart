import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn_ui_demo/preferences/preference_manager.dart';
import 'package:vpn_ui_demo/preferences/preferences_key.dart';
import 'package:vpn_ui_demo/theme.dart';

import 'Fast_fox/splash_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await AppPreference().initialAppPreference();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: AppPreference().getBool(PreferencesKey.themeMode)
          ? ThemeMode.dark
          : ThemeMode.light,
      darkTheme: Themes().darkTheme,
      theme: ThemeData(textTheme: GoogleFonts.goudyBookletter1911TextTheme()),
      home: const SplashScreen(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
//       home: const BuiBuiVPN(),
//     );
//   }
// }



// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_app_icons/flutter_app_icons.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final _flutterAppIconsPlugin = FlutterAppIcons();
//   String icon = 'favicon.png';
//   @override
//   void initState() {
//     super.initState();
//     //_flutterAppIconsPlugin.setIcon(icon: 'favicon-failure.png');
//   }

//   @override
//   Widget build(BuildContext context) {
//     //Auto icon change every 5 seconds, just for testing.
//     Timer.periodic(const Duration(seconds: 5), (Timer timer) {
//       String oldIcon = icon;
//       if (icon == 'favicon.png') {
//         icon = 'favicon-failure.png';
//       } else {
//         icon = 'favicon.png';
//       }
//       _flutterAppIconsPlugin.setIcon(icon: icon, oldIcon: oldIcon);
//     });
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Center(
//           child: SizedBox(
//             width: 140,
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
//               child: Column(
//                 children: [
//                   const Text('Change favicon here:'),
//                   Row(
//                     children: [
//                       TextButton(
//                         onPressed: () {
//                           _flutterAppIconsPlugin.setIcon(
//                             icon: 'favicon-failure.png',
//                             oldIcon: 'favicon.png',
//                           );
//                         },
//                         child: const Text(
//                           'Red',
//                           style: TextStyle(color: Colors.red),
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           _flutterAppIconsPlugin.setIcon(
//                             icon: 'favicon.png',
//                             oldIcon: 'favicon-failure.png',
//                           );
//                         },
//                         child: const Text(
//                           'Blue',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
