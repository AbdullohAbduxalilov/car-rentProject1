import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2homework/screens/homePage/Tabscreens/CarsTabScreen.dart';
import 'package:flutter2homework/screens/homePage/Tabscreens/ExploreTabScreen.dart';
import 'package:flutter2homework/screens/homePage/Tabscreens/HelicopterTabScreen.dart';
import 'package:flutter2homework/screens/homePage/Tabscreens/ScootersTabScreen.dart';
import 'package:flutter2homework/screens/homePage/Tabscreens/TrucksTabScreen.dart';

class ExploreBottomNavBar extends StatefulWidget {
  const ExploreBottomNavBar({Key? key}) : super(key: key);

  @override
  _ExploreBottomNavBarState createState() => _ExploreBottomNavBarState();
}

class _ExploreBottomNavBarState extends State<ExploreBottomNavBar>    with SingleTickerProviderStateMixin  {

  final List<Tab> myTabs = <Tab>[
    Tab(
      text: 'Explore',
    ),
    Tab(text: 'Cars'),
    Tab(text: 'Trucks'),
    Tab(text: 'Scooters'),
    Tab(text: 'Helicopters'),
  ];

  final List<Widget> myTabsScreens = [
    ExploreTabScreen(),
    CarsTabScreen(),
    TrucksTabScreen(),
    ScootersTabScreen(),
    HelicopterTabScreen(),
  ];

  TabController? _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabsScreens.length);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0,right: 16.0,left: 16.0, ),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Explore",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  Icon(CupertinoIcons.text_alignleft),
                  SizedBox(
                    width: 15.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1631288433232-3d6f13901364?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=649&q=80"),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 290.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        prefixIcon: Icon(CupertinoIcons.search),
                        hintText: "What transport do you need?",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(
                            -2.0,
                            2.0,
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
                    ),
                    child: Icon(CupertinoIcons.arrow_up_arrow_down),
                  ),
                ],
              ),
              Container(
                width: 555.0,
                height: 40.0,
                child: ListView(
                  padding: EdgeInsets.all(0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 400.0,
                      height: 40.0,
                      child: TabBar(
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.black,
                        controller: _tabController,
                        tabs: myTabs,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                height: 380.0,
                child: TabBarView(
                  controller: _tabController,
                  // children: myTabs.map((Tab tab) {
                  //   final String label = tab.text!.toLowerCase();
                  //   return ExploreTabScreen();
                  // }).toList(),
                  children: myTabsScreens,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20.0,
              ),
              Container(
                height: 190.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 16,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 180.0,
                        width: 150.0,
                        margin: EdgeInsets.all(10.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 30.0),
                          child: Text(
                            "Snow Bikes",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                            textAlign:  TextAlign.center,
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://www.mymemory.co.uk/blog/wp-content/uploads/2019/10/White-coupe-Photo-Charlie-Deets-via-Unsplash.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
