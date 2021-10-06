import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            child: Center(child: Text("Profile", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900,fontFamily: "Arial",fontSize: 20,fontStyle: FontStyle.italic),)),       
              // Container Styling
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20),
            ),
     ),
        )
          );
  }
}