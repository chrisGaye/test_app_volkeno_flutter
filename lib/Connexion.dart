import 'package:flutter/material.dart';
import 'package:test_app_volkeno/Math.dart';

import 'Accueil.dart';

class Connexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
               body: SingleChildScrollView(
                    child: Form(
                    key: key,
                 child: Column(
      
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Image.asset('images/logo.jpg'),
                        ),
                    ),
                   
                    SizedBox(
                        height: 50,
                      ), 
                    Center(
                        child: Text(
                        "Connetez-vous",
                        style: TextStyle(
                            color: Color(0xFF18D09D),    
                            // Color(Colors."#18D09D"),
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      )
                    ) ,
                    
                     SizedBox(
                        height: 30,
                      ),  
                    Center(
                      child: ListTile(
                         title:  TextFormField(
                        decoration: InputDecoration(
                           prefixIcon: Icon(Icons.mail),
                          focusedBorder: OutlineInputBorder(
                              borderRadius : BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xFF18D09D), width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius : BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xFF18D09D), width: 1.0),
                            ),
                            hintText: 'Adresse Mail',
                            labelStyle: TextStyle(fontWeight: FontWeight.bold)
                        ),
                     ),
                   ),
                    ),
                    SizedBox(
                        height: 30,
                      ), 
                    ListTile(
                      title: TextFormField(
                      // onSaved: (value) => body = value,
                      decoration: InputDecoration(
                         prefixIcon: Icon(Icons.vpn_key),
                          focusedBorder: OutlineInputBorder(
                              borderRadius : BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xFF18D09D), width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius : BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xFF18D09D), width: 1.0),
                            ),
                            hintText: 'Mot de passe',
                            labelStyle: TextStyle(fontWeight: FontWeight.bold)
                        ),             ),
            ),
            SizedBox(
                        height: 25,
                      ),  
            ListTile(
               title: RaisedButton(
                 child: Text("Se connecter", style: TextStyle(   
                            fontSize: 25
                      ),),
                 
                 textColor: Colors.white,
                 shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                color: Color(0xFF18D09D),
                 onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                         return Math();       
                    }));
               }),
            ),
            SizedBox(
                        height: 15,
                      ),  
            Center(
              child: RichText(
                  text: TextSpan(
                  /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Pas encore de compte ?', style: TextStyle( color: Colors.black,fontSize: 16) ),
                      TextSpan(
                          text: "  S'inscrire",
                          style: TextStyle(color: Color(0xFF18D09D) , fontSize: 16)),
                    ],
                  ),
                ),      
            )
          ],
         ),
       ),
      )

    );
  }
}