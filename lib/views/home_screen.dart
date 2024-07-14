import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Container(alignment: Alignment.center, color : Colors.orange, child: Text("Cabin Tab")),
        Container(alignment: Alignment.center, color : Colors.grey, child: Text("Call Tab")),
        Container(alignment: Alignment.center, color : Colors.lightGreenAccent, child: Text("Cake Tab")),
      ],
    );
  }
}
