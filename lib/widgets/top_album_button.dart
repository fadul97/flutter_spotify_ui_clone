import 'package:flutter/material.dart';
import '../constants/colors.dart';

class TopAlbumButton extends StatelessWidget {
  const TopAlbumButton({Key? key, required this.albumName, required this.albumImageURL}) : super(key: key);

  final String albumName;
  final String albumImageURL;
  final double squareImageValue = 75.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: outlinedButtonBGColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0)),
        onPressed: () {
          debugPrint('$albumName Clicked!');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
              child: Image.network(
                albumImageURL,
                height: squareImageValue,
                width: squareImageValue,
                // fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              albumName,
              style: const TextStyle(color: outlinedButtonTxtColor, fontSize: 12.0),
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
            )
          ],
        ),
      ),
    );
  }
}