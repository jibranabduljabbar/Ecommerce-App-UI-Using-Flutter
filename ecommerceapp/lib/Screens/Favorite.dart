import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            child: Center(child: Text("Favorite", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900,fontFamily: "Arial",fontSize: 20,fontStyle: FontStyle.italic),)),       
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