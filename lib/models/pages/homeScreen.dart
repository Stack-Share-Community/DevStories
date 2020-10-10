import 'package:dev_stories/models/user.dart';
import 'package:dev_stories/pages/home.dart';
import 'package:dev_stories/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../db.dart';
import 'create_story.dart';

enum _SelectedTab { home, likes, search, profile }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User user;
  getUserData() {
    User users = User.fromJson(userDb);
    setState(() {
      user = users;
    });
  }

  var _selectedTab = _SelectedTab.home;
  int _currentPage;
  PageController _controller;
  @override
  void initState() {
    getUserData();
    // TODO: implement initState
    super.initState();
    _controller = PageController();
    _currentPage = 0;
  }

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
      _controller.animateToPage(i,
          duration: Duration(microseconds: 200), curve: Curves.bounceInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(user.name);
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.scatter_plot_sharp),
            title: Text("Add Story"),
            selectedColor: Colors.pink,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      body: PageView(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: [Home(), CreateStory(currentUser: user), Profile(user: user)],
      ),
    );
  }
}
