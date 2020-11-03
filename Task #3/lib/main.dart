import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   var titleList = ['Հայ ''  Eng ''  Рус ''  Fra ''  Deu ''  Esp   ' '  Ita'
    '\n\nWho we are','About us','Our trustees','Our donors','Our team','Our partners',
        'Contact us','What we do','Fundraising campaings','Activities','Projects','Media',
    'Press releases','News','Newsletters','Stories ','Announcements ','Gallery','Videos',
    'How we work ','Vidio Reports ','Reports','\nWhat can you do','In kind donations','Join our team',
    'Your Account','Login' ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),

      drawer: Container(
        padding: EdgeInsets.fromLTRB(0, 81, 0, 0),
        width: 350,

        child: Drawer(
         // child: _createHeader(),

             child: Container(
                 margin: const EdgeInsets.all(35.0),
                 child: ListView.builder(
                           itemCount: titleList.length,
                           itemBuilder:(context,index) {
                             return RichText(
                               text: TextSpan(
                                   text: titleList[index],style: TextStyle(fontSize: 20, color: Colors.black)
                               ),
                             );
                           }
                     )
                 )
              ),
        ),
      );
  }
}
