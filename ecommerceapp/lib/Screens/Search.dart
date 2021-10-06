import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            child: Center(child: Text("Search", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900,fontFamily: "Arial",fontSize: 20,fontStyle: FontStyle.italic),)),       
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