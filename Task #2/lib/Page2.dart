import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: MyApp()
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: Row(
        children: <Widget>[
          buildNavBarItem(Icons.home),
          buildNavBarItem(Icons.card_giftcard),
          buildNavBarItem(Icons.camera),
          buildNavBarItem(Icons.person),
          buildNavBarItem(Icons.pie_chart),
        ],
      ),
      
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen,
        toolbarHeight: 80,
        leading: new CircleAvatar(

          radius:80,
          backgroundImage:AssetImage('assets/countriesLogo.jpg'),
          child: new Material(
            shape: new CircleBorder(),
          ),
        ),

        actions: <Widget>[
          Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: new ButtonBar(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        RaisedButton(
                          child: new Text('menu1'),
                          color: Colors.lightGreen[100],
                          onPressed: () {/** */},
                        ),
                        RaisedButton(
                          child: Text('menu2'),
                          color: Colors.lightGreen[100],
                          onPressed: () {/** */},
                        ),
                        RaisedButton(
                          child: Text('menu3'),
                          color: Colors.lightGreen[100],
                          onPressed: () {/** */},
                        ),
                      ],
                    ),
                  ),
                ],
              )
          )
        ],
      ),

      body: Column(
        children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                 children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(2, 20, 0, 3),
                   child: Image(
                     image: AssetImage('assets/image.png'),
                     width: 150,
                     height: 120,
                   ),
                  ),
                  Container(
                     //color: Colors.white,
                     padding: EdgeInsets.fromLTRB(0, 20, 70, 0),
                     child: Text("Name here \nsome text \nhere and \nthe",style: TextStyle(fontSize: 23) ),
                   ),
                 ],
             ),
             Container(
                //color: Colors.white,
                padding: EdgeInsets.fromLTRB(0, 20, 80, 20),
                child: Text("continuation is here and \nsomthing else is right here",style: TextStyle(fontSize: 23) ),
            ),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(0.0),
                    child: RaisedButton(
                        child: Text(' use this ',style: TextStyle(fontSize: 20)),
                        color: Colors.lightGreen,
                        onPressed: () {/** */},
                    ),
                    width: 125.0,
                    height: 40.0,
                ),
                Container(
                      padding: const EdgeInsets.all(0.0),
                      child: RaisedButton(
                        child: Text('remember',style: TextStyle(fontSize: 20)),
                        color: Colors.lightGreen,
                        onPressed: () {/** */},
                      ),
                      width: 125.0,
                      height: 40.0,
                  ),
              ],
          ),
    ],
   ),
  ) ;
  }
Container buildNavBarItem(IconData icon){
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width/5,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
      ),
      child: Icon(icon),
    );
}
}


