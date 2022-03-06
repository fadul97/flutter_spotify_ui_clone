import 'package:flutter/material.dart';
import '../constants/bottom_bar_items.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        bottomItems[2].label.toString(),
        style: const TextStyle(fontSize: 60.0, color: Colors.white),
      ),
    );
  }
}