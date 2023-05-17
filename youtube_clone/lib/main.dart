import 'package:flutter/material.dart';
import 'package:youtube_clone/youtube_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "YouTube UI",
      home: YoutubeMain(),
    );
  }
}
