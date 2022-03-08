import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/widgets/bottom_nav_bar.dart';
import 'package:spotify_ui_clone/constants/theme_data.dart';

void main() {
  runApp(const SpotifyApp());
}

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Spotify UI Clone',
        theme: spotifyThemeData,
        home: const SpotifyScaffold());
  }
}


