import 'package:flutter/material.dart';

import '../constants/bottom_bar_items.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({Key? key}) : super(key: key);

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        bottomItems[1].label.toString(),
        style: const TextStyle(fontSize: 60.0, color: Colors.white),
      ),
    );
  }
}
