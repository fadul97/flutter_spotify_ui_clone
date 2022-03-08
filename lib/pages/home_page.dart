import 'package:flutter/material.dart';
import '../widgets/top_album_button.dart';
import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TextStyle appBarTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    color: homeTextColor,
  );
  static const Text appBarText = Text(
    'Good morning',
    textAlign: TextAlign.start,
    style: appBarTextStyle,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 30.0),
          child: appBarText,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            TopAlbumButton(
                albumName: 'Album 1',
                albumImageURL:
                    'https://img.freepik.com/free-vector/music-speakers-album-cover-poster_1017-26877.jpg'),
            TopAlbumButton(
                albumName: 'Album 2',
                albumImageURL:
                    'https://img.freepik.com/free-vector/music-speakers-album-cover-poster_1017-26877.jpg'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            TopAlbumButton(
                albumName: 'Album 3',
                albumImageURL:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYDGZua70yg6FgZ4eeRKkX7UY_aiS481X1xQ&usqp=CAU'),
            TopAlbumButton(
                albumName: 'Album 4',
                albumImageURL:
                    'https://image.shutterstock.com/image-photo/vinyl-record-music-close-up-260nw-1731506476.jpg'),
          ],
        )
      ],
    );
  }
}
