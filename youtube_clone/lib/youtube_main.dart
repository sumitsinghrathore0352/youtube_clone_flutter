import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/home.dart';

class YoutubeMain extends StatefulWidget {
  const YoutubeMain({super.key});

  @override
  State<YoutubeMain> createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {
  int _currentIndex = 0;
  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List _screens = [
      HomeScreen(),
      Center(child: Text("Trending")),
      Center(child: Text("Subscription")),
      Center(child: Text("Inbox")),
      Center(child: Text("Library")),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey[800]),
        title: Image.asset(
          'images/youtube-logo.png',
          width: 98.0,
          height: 22.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        onTap: _onTapped,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Trending',
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            label: 'Subscription',
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            label: 'Inbox',
            icon: Icon(Icons.mail),
          ),
          BottomNavigationBarItem(
            label: 'Library',
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
