import 'package:flutter/material.dart';

class ChatBottomNavBar extends StatefulWidget {
  const ChatBottomNavBar({Key? key}) : super(key: key);

  @override
  _ChatBottomNavBarState createState() => _ChatBottomNavBarState();
}

class _ChatBottomNavBarState extends State<ChatBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chat"),
      ),
    );
  }
}
