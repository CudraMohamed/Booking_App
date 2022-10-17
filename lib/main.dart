import 'package:flutter/material.dart';
import 'package:online_bus_booking_app/components/travelcard.dart';
import 'package:online_bus_booking_app/splash.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TravelApp(),
  ));
}

class TravelApp extends StatefulWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {

  List<String>urls=[
    "https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80"
    "https://images.unsplash.com/photo-1632276536839-84cad7fd03b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80"
    "https://images.unsplash.com/photo-1532939163844-547f958e91b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80"
  ];

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFFF6F7FF),
          title: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
                color: Colors.black,
              )
            ],
          )),

      body: Padding(

        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to BookApp',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Pick your destination',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'search for travel destinations',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                        indicatorColor: Color(0xFF2AAA02),
                        unselectedLabelColor: Color(0x55555555),
                        labelColor: Color(0xFF2AAA02),
                        labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                        tabs: [
                          Tab(
                            text: 'Recently Visited',
                          ),
                          Tab(
                            text: 'Rated Best',
                          ),
                          Tab(
                            text: 'Favorites',
                          ),
                        ]),
                    SizedBox(height: 20.0),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                travelCard(urls[0], "Guardian Bus", "Nairobi", 5),
                                travelCard(urls[0], "Guardian", "Kakamega", 3),
                                travelCard(urls[0], "Bus", "Lamu", 4)
                              ],
                            ),
                          ),
                          Container(
                            height: 30.0,
                            child: TabBarView(
                              children: [
                                Container(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [],
                                  ),
                                ),
                                Container(
                                  height: 300.0,
                                  child: TabBarView(
                                    children: [
                                      Container(
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [],
                                        ),
                                      ),
                                      Container(
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white10,
        selectedItemColor: Color(0xFF2AAA02),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:"Home",),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label:"Bookmark",),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label:"Destination",),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label:"Notification",)
        ],
      ),
    );
  }
}
