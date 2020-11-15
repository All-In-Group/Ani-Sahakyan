import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 5),
        child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 60, 30, 30),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sarah Al Ali\n",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                            Description("id:", "000  001"),
                            Description("phone:", "+965 12345678"),
                            Description("email:","sarah.al.ali@mail.ku" ),
                            Text("\n"),
                            Description("points","39 KWD"),
                            Description("discount","7%"),
                            SizedBox(
                              height: 60,
                              width: 120,
                            ),
                            Center(
                              child: SizedBox(
                                width: 250,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Colors.black)),
                                  color: Colors.white,
                                  textColor: Colors.black,
                                  onPressed: () {},
                                  child: Text("detailed information", style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.italic,),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 250,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Colors.black)),
                                  color: Colors.white,
                                  textColor: Colors.black,
                                  onPressed: () {},
                                  child: Text("settings", style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.italic,),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ),
            ]
          ),
          ),
    )

    );
  }
}
class Description extends StatelessWidget {
  Description(this.title,this.data);
  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,)),
        Text(data,style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,))
      ],
    );
  }
}

