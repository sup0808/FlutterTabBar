import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nav_drawer_screen.dart';

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Profile"),
       backgroundColor: Colors.purpleAccent,
     ),
     drawer: DrawerDemo(),
     body: Container(
         alignment : Alignment.center,
         child: Text("Profile Screen")),
   );
  }

}