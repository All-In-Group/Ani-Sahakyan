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

          buildNavBarItem(Icons.home,false),
          buildNavBarItem(Icons.style,true),
          buildNavBarItem(Icons.add_alert_rounded,false),
          buildNavBarItem(Icons.account_circle_outlined,false),

        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        title: Text("City Centre",style: TextStyle(fontSize: 30,color: Colors.red)),
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
      body: Container(
        color: Colors.grey[50],
        padding: EdgeInsets.fromLTRB(10, 10, 10, 70),
        child: GridView.count(
              crossAxisCount: 1,
              padding: EdgeInsets.fromLTRB(25, 40, 20, 50),
              childAspectRatio: 14.0 / 5.0,

              children:<Widget> [
                    MyMenu(),
                    MyMenu(),
                    MyMenu(),
                    MyMenu(),
          ]
        ),
      ),
    );
  }

  Container buildNavBarItem(IconData icon, isActive){
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width/4,
      decoration: BoxDecoration(
        color: Colors.grey[50],

        border: Border(
          top: BorderSide( //                    <--- top side
            color: Colors.grey[300],
            width: 3.0,
          ),
        )
      ),
      child: Icon(icon,color: isActive?Colors.red:Colors.black),
    );
  }
}

class MyMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.45;
    return Card(
          margin: EdgeInsets.fromLTRB(2.0, 8.0, 9.0, 12.0),
          color: Colors.grey[300],
          child: Row(
              children: <Widget>[

                Container(
                  width: 90,
                  height: 90,
                  child: Image.asset("assets/coca_cola.jpg"),
                ),
                Padding(
                    padding: const EdgeInsets.all(9.0),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                        "Coca Cola",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          width: 80,
                        ),
                        Container(
                          width: width,
                          child: Text(
                              "Only today get coca cola  with 0.1.",
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ],
                    )
                ),
              ]
          )
      );
  }
}
