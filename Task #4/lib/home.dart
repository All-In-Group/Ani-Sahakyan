import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       // margin: EdgeInsets.only(top: 5),
        child: Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black)),
                  color: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {},
                  child: Text(
                    " 000 001 ",
                    style: TextStyle(
                      fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                    ),
                  ),
                ),


              Image(
                  width: 240,
                  height: 240,
                  image: AssetImage('assets/QR_code.png'),
              ),

               SizedBox(
                width: 260,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black)),
                      color: Colors.white,
                      textColor: Colors.black,
                      onPressed: () {},
                      child: Text(
                        "scan code",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                ),
              ),
              ],
              )
             )
            )
          );
  }
}

