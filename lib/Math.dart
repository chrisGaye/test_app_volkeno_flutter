import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Math extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
          length: 3,
          child: Scaffold(
          appBar: AppBar(
            title: Text("Mathématiques", style: TextStyle(color:Colors.black),),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color:Color(0xFF18D09D)),
            actions: <Widget>[
             
          ],
           bottom: TabBar(labelColor: Colors.black,tabs: <Widget>[
                  Tab( text: "Document", 
                    ),
                  Tab(text: "Vidéo"),
                  Tab(text: "Téléchargements"),
                 ]),           
        ), 
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
                Center(
                   child: Padding(
                     padding: const EdgeInsets.all(30.0),
                     
                     child: Row(
                       children: <Widget>[

                         Text(
                                "La factorisation",
                                style: TextStyle(
                                    color: Colors.black,    
                                    // Color(Colors."#18D09D"),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                                  
                              ),
                          Spacer(),
                          Icon(Icons.file_download)
                       ],
                     ),
                          
                   )
                ),
                Divider(color: Colors.black,),
                 Center(
                   
                   child: Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Row(
                       children: <Widget>[
                         Text(
                                "Le Développement",
                                style: TextStyle(
                                    color: Colors.black,    
                                    // Color(Colors."#18D09D"),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                    ),
                              ),
                              Spacer(),
                                Icon(Icons.file_download)
                       ],
                     ),
                   )
                ),
                Divider(color: Colors.black,)

              ]

           )
        )

        ),
    );
  }
}