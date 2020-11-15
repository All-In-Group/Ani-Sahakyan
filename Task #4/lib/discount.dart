import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DiscountPage extends StatefulWidget {
  @override
  _DiscountPageState createState() => _DiscountPageState();
}

class _DiscountPageState extends State<DiscountPage> {
  int _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          fontStyle: FontStyle.italic,
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
                              fontSize: 15, color: Colors.black,
                              fontStyle: FontStyle.italic),

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
