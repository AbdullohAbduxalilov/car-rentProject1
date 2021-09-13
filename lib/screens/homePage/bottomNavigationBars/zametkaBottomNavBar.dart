import 'package:flutter/material.dart';

class ZametkaBottomNavBar extends StatefulWidget {
  const ZametkaBottomNavBar({Key? key}) : super(key: key);

  @override
  _ZametkaBottomNavBarState createState() => _ZametkaBottomNavBarState();
}

class _ZametkaBottomNavBarState extends State<ZametkaBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("zametka Screen"),
      ),
    );
  }
}
