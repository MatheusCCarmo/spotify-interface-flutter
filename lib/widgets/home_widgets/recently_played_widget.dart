import 'package:flutter/material.dart';
import 'package:spotify/widgets/home_widgets/recently_played_item.dart';

class RecentlyPlayedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Recently played',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
            ],
          ),
        ),
      ],
    );
  }
}
