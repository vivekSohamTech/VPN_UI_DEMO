import 'package:flutter/material.dart';

import 'constant.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    iconTheme: const IconThemeData(color: appPrimaryColor,),
    dividerColor: appBlackColor,
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(selectedItemColor: appBlackColor),
    dialogTheme: const DialogTheme(
      titleTextStyle: TextStyle(
          color: appBlackColor, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    indicatorColor: Colors.black,
    
    appBarTheme: const AppBarTheme(
      backgroundColor: appWhiteColor,
      iconTheme: IconThemeData(color: appBlackColor),
      titleTextStyle: TextStyle(
          color: appBlackColor, fontSize: 20, fontFamily: 'SourceSansPro'),
    ),
  );

  final darkTheme = ThemeData.dark().copyWith(
    iconTheme: const IconThemeData(color: appWhiteColor),
    dividerColor: appWhiteColor,
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(selectedItemColor: appWhiteColor),
    dialogTheme: const DialogTheme(
      titleTextStyle: TextStyle(
          color: appBlackColor, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    indicatorColor: appWhiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: appBlackColor,
      iconTheme: IconThemeData(color: appWhiteColor),
      titleTextStyle: TextStyle(
          color: appWhiteColor, fontSize: 20, fontFamily: 'SourceSansPro'),
    ),
  );
}
