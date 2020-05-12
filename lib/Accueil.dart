import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/logo.jpg'),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color:Color(0xFF18D09D)),
        actions: <Widget>[
        IconButton(icon: Icon(Icons.person, color: Colors.black,), onPressed: () {}),
      ],
      ), 
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
           fixedColor:Color(0xFF18D09D),
           items: [
              BottomNavigationBarItem(icon: Icon(Icons.book), title: Text('Semestre 1')),
              BottomNavigationBarItem(icon: Icon(Icons.book), title: Text('Semestre 2')),
              BottomNavigationBarItem(icon: Icon(Icons.folder), title: Text('Support')),
           ]
      ), 
      body: Container(
        child: Column(
           children: <Widget>[
             new Container(
               height: 60.0, width: 80.0, color: Colors.green,
               padding: EdgeInsets.only(left:70),
              //  padding: Padding(
              //    padding: EdgeInsets.only(left:30)
              //    ),
               ),
        new Container(
            height: 40.0, width: 15.0, color: Colors.red),
        new Container(
          child: new Text("Category", textAlign: TextAlign.start,
            style: TextStyle(
                fontFamily: 'Bold',
                fontSize: 18.0,
                color: Colors.black),
          ),
          decoration: new BoxDecoration(
            color: Colors.purple,
          ),
          height: 40.0,
        ),
              // new Container(
              //   //  padding: EdgeInsets.all(30),
                 
              //    decoration: BoxDecoration(
              //       border: Border.all(color: Colors.red)
              //     ),
  
              //   //  child: Padding(
                   
              //     //  padding: 
              //     //  child: Container(
              //     //   // decoration: new BoxDecoration(
              //     //   //   // borderRadius: BorderRadius.all(Radius.circular(2.3))
              //     //   // ),
                    
              //     //   color: Colors.red,
              //     //   height:120, width: 120,
              //     //  ),
              //   // ),
                 
              // ),

              
           ],
        )
      )
      );
  }
}