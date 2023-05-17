import 'package:flutter/material.dart';
import 'models/youtube_model.dart';

class VideoList extends StatelessWidget {
  const VideoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          Column(
            children: [
              Text(
                youtubeData[index].title,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => Divider(
              height: 1.0,
              color: Colors.grey,
            ),
        itemCount: youtubeData.length);
  }
}
