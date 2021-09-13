import 'package:flutter/material.dart';

class PlusBottomNavBar extends StatefulWidget {
  const PlusBottomNavBar({Key? key}) : super(key: key);

  @override
  _PlusBottomNavBarState createState() => _PlusBottomNavBarState();
}

class _PlusBottomNavBarState extends State<PlusBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plus Screen"),
      ),
    );
  }
}
