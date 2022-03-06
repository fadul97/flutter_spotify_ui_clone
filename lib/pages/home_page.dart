import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/bottom_bar_items.dart';
import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return buildImageButton();
  }
}

Widget buildImageButton() {
  const String albumName = 'Album 1 - Music';
  double squareImage = 75.0;
  // double? spaceBetweenImageAndText = 15.0;

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: outlinedButtonBGColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0)
      ),
      onPressed: () {
        debugPrint('$albumName Clicked!');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)),
            child: Image.network(
              'https://img.freepik.com/free-vector/music-speakers-album-cover-poster_1017-26877.jpg',
              height: squareImage,
              width: squareImage,
              // fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Text(
            albumName,
            style: TextStyle(color: outlinedButtonTxtColor, fontSize: 12.0),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    ),
  );
}
