import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/pages/browse_page.dart';
import 'package:spotify_ui_clone/pages/home_page.dart';
import 'package:spotify_ui_clone/pages/library_page.dart';
import 'package:spotify_ui_clone/pages/radio_page.dart';
import 'package:spotify_ui_clone/pages/search_page.dart';
import '../constants/bottom_bar_items.dart';

class SpotifyScaffold extends StatefulWidget {
  const SpotifyScaffold({Key? key}) : super(key: key);

  @override
  State<SpotifyScaffold> createState() => _SpotifyScaffoldState();
}

class _SpotifyScaffoldState extends State<SpotifyScaffold> {
  int _selectedIndex = 0;
  static String appBarText = 'Spotify UI Clone';
  static TextStyle appBarTextStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0);

  final screens = [
    const HomePage(),
    const BrowsePage(),
    const SearchPage(),
    const RadioPage(),
    const LibraryPage()
  ];

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
      // setAppBarTextAndStyle(HomePage.appBarText, HomePage.appBarTextStyle);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText),
        titleTextStyle: appBarTextStyle
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onTappedItem,
          items: bottomItems),
      body: screens[_selectedIndex],
    );
  }

  setAppBarTextAndStyle(String text, TextStyle textStyle){
    appBarText = text;
    appBarTextStyle = textStyle;
  }
}