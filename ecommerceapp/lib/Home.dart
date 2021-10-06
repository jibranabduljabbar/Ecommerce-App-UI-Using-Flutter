import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
    testTimer();
  }

  var catBarTitles = [
    'Clothes',
    'Electronic',
    'HouseHold',
    'Appliances',
    'Others'
  ];
  var catBarIcons = [
    Icons.ac_unit,
    Icons.power,
    Icons.house,
    Icons.deck,
    Icons.more
  ];
  var imgLst = [
    'assets/Oppo X3.jpg',
    'assets/Farari Car.jpg',
    'assets/MacbookAir.jpg',
    'assets/Note20Ultra.jpg',
    'assets/Dell Inspiron.webp',
    'assets/MacbookPro.jpg',
    'assets/Sumsung Galaxy.jpg',
    'assets/Lamborghini.jpg',
    'assets/Iphone.jpg',
    'assets/SumsungTablet.jpg',
    'assets/GamingPC.jpg',
    'assets/Backlit.jpg',
    'assets/Computer.jpg',
  ];
  var imgNameLst = [
    'Oppo X3',
    'Farari',
    'Macbook Air',
    'Note 20 Ultra',
    'Dell Inspiron',
    'Macbook Pro',
    'Sumsung Galaxy',
    'Lamborghini',
    'Iphone 12',
    'Sumsung Tablet',
    'Gaming PC',
    'Backlit Keyboard',
    'Computer',
  ];
  int counter = 0;
  int _currentIndex = 0;
  var lstColor = [Colors.black, Colors.purple];
  int item0 = 1, item1 = 0, item2 = 0, item3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ecom App UI',
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.purple,
          child: Icon(
            Icons.search,
            size: 40,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                    item0 = 1;
                    item1 = 0;
                    item2 = 0;
                    item3 = 0;
                  });
                },
                icon: Icon(Icons.home),
                iconSize: 30,
                color: lstColor[item0],
                padding: EdgeInsets.only(left: 28.0),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                    item0 = 0;
                    item1 = 1;
                    item2 = 0;
                    item3 = 0;
                  });
                },
                icon: Icon(Icons.favorite),
                iconSize: 30,
                color: lstColor[item1],
                padding: EdgeInsets.only(right: 28.0),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                    item0 = 0;
                    item1 = 0;
                    item2 = 1;
                    item3 = 0;
                  });
                },
                icon: Icon(Icons.add_shopping_cart),
                iconSize: 30,
                color: lstColor[item2],
                padding: EdgeInsets.only(left: 28.0),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 3;
                    item0 = 0;
                    item1 = 0;
                    item2 = 0;
                    item3 = 1;
                  });
                },
                icon: Icon(Icons.person),
                iconSize: 30,
                color: lstColor[item3],
                padding: EdgeInsets.only(right: 28.0),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5,),
              ListTile(
                title: Text(
                  'Items',
                  style: TextStyle(fontFamily: "combrige",fontSize: 22, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  'View More',
                  style: TextStyle(color: Colors.purple, fontSize: 13),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                child: bigCotainer(counter),
              ),
              SizedBox(height: 3,),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'More Categories',
                    style: TextStyle(fontFamily: "combrige",fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
                            SizedBox(height: 5,),
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catBarTitles.length,
                    itemBuilder: (context, int index) {
                      return catBar(index);
                    }),
              ),
              ListTile(
                title: Text(
                  'Popular Items',
                  style: TextStyle(fontFamily: "combrige",fontSize: 22, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  'View More',
                  style: TextStyle(color: Colors.purple, fontSize: 13),
                ),
              ),
                            SizedBox(height: 7,),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 12.0,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10),
                  shrinkWrap: true,
                  itemCount: imgLst.length,
                  itemBuilder: (context, int index) {
                    return smallContainer(index);
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget smallContainer(int index) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      // height: MediaQuery.of(context).size.width * 0.40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 3,
                spreadRadius: 2)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.28,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                    image: AssetImage(imgLst[index]), fit: BoxFit.fill)),
          ),
          ListTile(
            title: Text(
              imgNameLst[index],
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [Star(), Star(), Star(), Star(), Star(), Text('5.0')],
            ),
          )
        ],
      ),
    );
  }

  Widget bigCotainer(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 3,
                blurRadius: 3)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                image: DecorationImage(
                    image: AssetImage(imgLst[index]), fit: BoxFit.fill),
              ),
            ),
            ListTile(
              title: Text(
                imgNameLst[index],
                style: TextStyle(fontFamily: "combrige",fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                             SizedBox(height: 20,),
                  Star(),
                  Star(),
                  Star(),
                  Star(),
                  Star(),
                  Text(
                    ' 5.0 (23 Reviews)',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget catBar(int index) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 3,
              spreadRadius: 2,
              color: Colors.grey.withOpacity(0.5))
        ],
      ),
      child: ListTile(
        tileColor: Colors.white,
        leading: Icon(
          catBarIcons[index],
          color: Colors.purple,
        ),
        title: Text(
          catBarTitles[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        subtitle: Text('5 Items',style: TextStyle(fontSize: 11),),
      ),
    );
  }

  Widget Star() {
    return Icon(
      Icons.star,
      color: Colors.amber,
      size: 12,
    );
  }

  void testTimer() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        if (counter < imgLst.length - 1) {
          if (counter != imgLst.length) {
            counter++;
          }
          testTimer();
        } else {
          counter = 0;
          testTimer();
        }
      });
    });
  }
}