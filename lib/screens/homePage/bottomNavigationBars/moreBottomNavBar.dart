import 'package:flutter/material.dart';

class MoreBottomNavBar extends StatefulWidget {
  const MoreBottomNavBar({Key? key}) : super(key: key);

  @override
  _MoreBottomNavBarState createState() => _MoreBottomNavBarState();
}

class _MoreBottomNavBarState extends State<MoreBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" More Settings"),
      ),
    );
  }
}
