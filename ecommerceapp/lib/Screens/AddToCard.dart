import 'package:flutter/material.dart';

class AddToCard extends StatefulWidget {
  @override
  _AddToCardState createState() => _AddToCardState();
}

class _AddToCardState extends State<AddToCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            child: Center(child: Text("Add To Card", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900,fontFamily: "Arial",fontSize: 20,fontStyle: FontStyle.italic),)),       
              // Container Styling
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
     ),
        )
          );
  }
}