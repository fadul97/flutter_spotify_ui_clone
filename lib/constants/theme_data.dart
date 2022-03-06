import 'package:flutter/material.dart';
import 'colors.dart';

final spotifyThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: topBarBGColor,
    titleTextStyle: TextStyle(
        color: appBarTitleColor, fontWeight: FontWeight.bold, fontSize: 18.0),
    centerTitle: true,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedItemColor: unselectedItemColor, //
    selectedItemColor: selectedItemColor,
    backgroundColor: bottomNavBGColor,
  ),
  scaffoldBackgroundColor: mainBGColor,
);
