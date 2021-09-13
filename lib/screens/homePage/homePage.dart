import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter2homework/screens/homePage/bottomNavigationBars/PlusBottomNavBar.dart';
import 'package:flutter2homework/screens/homePage/bottomNavigationBars/chatBottomNavBar.dart';
import 'package:flutter2homework/screens/homePage/bottomNavigationBars/exploreBottomNavBar.dart';
import 'package:flutter2homework/screens/homePage/bottomNavigationBars/moreBottomNavBar.dart';
import 'package:flutter2homework/screens/homePage/bottomNavigationBars/zametkaBottomNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _bodiesOptions = <Widget>[
    ExploreBottomNavBar(),
    ZametkaBottomNavBar(),
    PlusBottomNavBar(),
    ChatBottomNavBar(),
    MoreBottomNavBar(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodiesOptions[_selectedIndex],
      bottomNavigationBar: bottomNavigationBarim(),
    );
  }

  Widget bottomNavigationBarim(){
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      showSelectedLabels: true,
      currentIndex: _selectedIndex,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(
        color: Colors.blue,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore,
          ),
          label: 'Explore',

          activeIcon: Icon(
            Icons.explore,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.bookmark,
          ),
          label: 'bookmark',
          activeIcon: Icon(
            CupertinoIcons.bookmark,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.add_circled,
          ),
          label: 'add',
          activeIcon: Icon(
            CupertinoIcons.add_circled,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.bubble_left,
          ),
          label: 'chat',
          activeIcon: Icon(
            CupertinoIcons.bubble_left,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.circle_grid_3x3,
          ),
          label: 'Explore',
          activeIcon: Icon(
            CupertinoIcons.circle_grid_3x3,
            color: Colors.blue,
          ),
        ),


      ],
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
