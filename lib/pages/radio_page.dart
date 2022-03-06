import 'package:flutter/material.dart';
import '../constants/bottom_bar_items.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        bottomItems[3].label.toString(),
        style: const TextStyle(fontSize: 60.0, color: Colors.white),
      ),
    );
  }
}
