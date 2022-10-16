import 'package:flutter/material.dart';
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
  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
          title:Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.menu),
                color: Colors.black,)
            ],
          )
      ),
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
            SizedBox(height: 20.0,),
           Material(
             elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              decoration:
                InputDecoration(
                  hintText: 'search for travel destinations',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                    border:InputBorder.none,
                ),),
            ),
            SizedBox(height: 30.0,),
            DefaultTabController(length: 3, child: Expanded(
              child: Column(
                children: [
                  TabBar(indicatorColor:Color(0x55555555),
                      tabs:[
                        Tab(
                          text: 'Recently Visited',
                        ),
                        Tab(
                          text: 'Rated Best',
                        ),
                        Tab(
                          text: 'Favorites',
                        ),
                      ]
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
