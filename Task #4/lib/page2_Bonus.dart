import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatefulWidget {
  @override
  _BonusPageState createState() => _BonusPageState();
}
class _BonusPageState extends State<BonusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[50],
        padding: EdgeInsets.fromLTRB(10, 7, 10, 10),
        child: GridView.count(
            crossAxisCount: 1,
            padding: EdgeInsets.fromLTRB(25, 40, 20, 50),
            childAspectRatio: 14.0 / 5.0,
            children:<Widget> [
              MyMenu(2, '05.11.2020'),
              MyMenu(13,'03.11.2020'),
              MyMenu(1, '03.11.2020'),
              MyMenu(2, '01.11.2020'),
            ]
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
 MyMenu(this.bonusCount,this.date);
 final int bonusCount;
 final String date;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.45;
    return Card(
        margin: EdgeInsets.fromLTRB(2.0, 8.0, 9.0, 12.0),
        color: Colors.grey[300],
        child: Row(
            children: <Widget>[


               Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Icon(Icons.add_alert_sharp,size: 35.0,color: Colors.red,),
                      Text(" date:", style: TextStyle(fontSize: 18)),     //    $date
                      Text(" address:", style: TextStyle(fontSize: 18)),    // Opposite Dalal Center,Al-Dajeej,\nKuwait
                    ]
                ),

              Padding(
                  padding: const EdgeInsets.fromLTRB(7, 1, 1, 1),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "You get $bonusCount KWD bonus",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       SizedBox(
                         height: 10,
                         width: 120,
                       ),
                      Text("$date \nOpposite Dalal Center,Al-Dajeej,\nKuwait", style: TextStyle(fontSize: 16)),

                    ],
                  )
              ),
            ]
        )
    );
  }
}
