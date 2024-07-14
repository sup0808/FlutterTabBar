import 'package:flutter/material.dart';
import 'package:flutter_tabbar/views/bottom_navigation_screen.dart';
import 'package:flutter_tabbar/views/contact_screen.dart';
import 'package:flutter_tabbar/views/help_screen.dart';
import 'package:flutter_tabbar/views/home_screen.dart';
import 'package:flutter_tabbar/views/nav_drawer_screen.dart';
import 'package:flutter_tabbar/views/profile_screen.dart';
import 'package:flutter_tabbar/views/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drawer",
      home: BottomNavigationScreen(
        selectedIndex: 0,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          title: const Text("Drawer Demo "),
          bottom: const TabBar(
              indicatorColor: Colors.black,
              dividerColor: Colors.blue,
              dividerHeight: 5,
              tabs: [
                Tab(
                  icon: Icon(Icons.cabin),
                  text: "Cabin",
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: "Call",
                ),
                Tab(
                  icon: Icon(Icons.cake),
                  text: "Cake",
                )
              ]),
        ),
        drawer: DrawerDemo(),
        body: HomeScreen(),
      ),
    );
  }
}
