//import 'dart:ui';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_app_task4/home.dart";
import 'package:flutter_app_task4/discount.dart';
import 'package:flutter_app_task4/page2_Bonus.dart';
import 'package:flutter_app_task4/account.dart';

void main() {
  runApp(new MaterialApp(
      home: MyApp()
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
       home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children =[
    HomePage(),
    DiscountPage(),
    BonusPage(),
    AccountPage(),
  ];
  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        elevation: 0,
        title: Text("City Centre",style: TextStyle(fontSize: 30,color: Colors.red,fontStyle: FontStyle.italic)),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: new CircleAvatar(
            radius:80,
            backgroundImage:AssetImage('assets/logo.jpg'),
            child: new Material(
              shape: new CircleBorder(),
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.grey,
                    Colors.grey[50]
                  ])
          ),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: _currentIndex,
        onTap: onTappedBar,
        items: [
          BottomNavigationBarItem(
            icon:new Icon( Icons.home ,color:_currentIndex == 0 ? Colors.red : Colors.black,size: 35.0),
            title:Text(" "),

          ),
          BottomNavigationBarItem(
            icon:new Icon( Icons.style,color:_currentIndex == 1 ? Colors.red : Colors.black,size: 35.0),
            title:Text(" "),
          ),
          BottomNavigationBarItem(
            icon:new Icon( Icons.add_alert_rounded,color:_currentIndex == 2 ? Colors.red : Colors.black,size: 35.0),
            title:Text(" "),
          ),
          BottomNavigationBarItem(
            icon:new Icon( Icons.account_circle_outlined,color:_currentIndex == 3 ? Colors.red : Colors.black,size: 35.0),
            title:Text(" "),
          )

        ],
      ),
    );
  }
}


