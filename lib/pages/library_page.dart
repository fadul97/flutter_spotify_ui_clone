import 'package:flutter/material.dart';
import '../constants/bottom_bar_items.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        bottomItems[4].label.toString(),
        style: const TextStyle(fontSize: 60.0, color: Colors.white),
      ),
    );
  }
}
