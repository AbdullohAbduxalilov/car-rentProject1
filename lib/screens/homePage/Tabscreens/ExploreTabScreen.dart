import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../loginPage.dart';

class ExploreTabScreen extends StatefulWidget {
  const ExploreTabScreen({Key? key}) : super(key: key);

  @override
  _ExploreTabScreenState createState() => _ExploreTabScreenState();
}

class _ExploreTabScreenState extends State<ExploreTabScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 16,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10.0),
            width: 320.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(
                    4.0,
                    4.0,
                  ),
                  blurRadius: 4.0,
                  spreadRadius: 5.0,
                  color: Colors.grey.withOpacity(0.4),
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.1, 0.5),
                  blurRadius: 0.0,
                  spreadRadius: 7.0,
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "BMW X4 Sports",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 1.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "2017 - COMFORT CLASS",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                    Text(
                      " 5   ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.sports_bar_sharp,
                      color: Colors.grey,
                    ),
                    Text(
                      " 4   ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.card_travel,
                      color: Colors.grey,
                    ),
                    Text(
                      " 3 ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 180.0,
                  width: 350.0,
                  child: Image(
                    image: NetworkImage(
                      "https://www.pngkit.com/png/full/158-1580094_bmw-i8.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Text(
                      "\$210",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: 10.0,
                        ),
                        child: Text(
                          "per day",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
