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

         actions: <Widget> [

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
        body: Container(
          color: Colors.lightGreen[100],
          padding: EdgeInsets.all(22.0),
            child: GridView.count(
              crossAxisCount: 2,
              children:<Widget> [
               MyMenu("Armenia",'assets/Armenia.jpg',"Yerevan","Asia","Armenian"),
               MyMenu("France",'assets/France.jpg',"Paris","Europe","French"),
               MyMenu("Spain",'assets/Spain.jpg',"Madrid","Europe","Spanish"),
               MyMenu("Italy",'assets/Italy.jpg',"Rome","Europe","Italian"),
               MyMenu("Portugal",'assets/Portugal.jpg',"Lisbon","Europe","Portuguese"),
               MyMenu("India",'assets/India.jpg',"Delhi","Asia","Hindi"),
               MyMenu("German",'assets/German.png',"Berlin","Europe","German"),
               MyMenu("England",'assets/England.jpg',"London","Europe","English"),
             ],
            ),
      ),

    );
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

class MyMenu extends StatelessWidget {
  MyMenu(this.name,this.image,this.capital,this.continent,this.language);//,
  final String image,name,capital,continent,language;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(1.0, 8.0, 9.0, 12.0),

          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(name+" Capital: "+capital, style: TextStyle(fontSize: 15)),
                leading: Image(
                  image: AssetImage( image),
                  width: 65,
                  height: 90,
                ),
              ),
             Text("Continent: " + continent+"\nLanguage: "+language,style: TextStyle(fontSize: 16)),
             Padding(
               padding: const EdgeInsets.fromLTRB(25, 10, 25, 1),
               child: FlatButton(
                 onPressed:(){},
                 color: Colors.lightGreen[600],
                 child: Center(
                   child: Text(' use this ',style: new TextStyle(fontSize: 22,color: Colors.white)),
                 ),
               ),
             )
            ]
        )
    );
  }
}

