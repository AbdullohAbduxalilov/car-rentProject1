import 'package:flutter/material.dart';

class CarsTabScreen extends StatefulWidget {
  const CarsTabScreen({Key? key}) : super(key: key);

  @override
  _CarsTabScreenState createState() => _CarsTabScreenState();
}

class _CarsTabScreenState extends State<CarsTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Cars"),
    );
  }
}
