import 'package:flutter/material.dart';
import 'package:test_login_screen/home_screen.dart';
import 'package:test_login_screen/post_screen.dart';
import 'package:test_login_screen/profile_screen.dart';
import 'package:test_login_screen/reel_screen.dart';
import 'package:test_login_screen/search_screen.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  int slectedState = 0;

  static const List<Widget> screen = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    ReelScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 99.0),
          child: SizedBox(
              height: 28, child: Image.asset('assets/Instagram Logo.png')),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.send_outlined),
          )
        ],
      ),
      body: screen[slectedState],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            slectedState = value;
          });
        },
        currentIndex: slectedState,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Search'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Post'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.video_chat_outlined), label: 'Reel\'s'),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Oval.png'),
                ),
              ),
              label: 'Profile')
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
