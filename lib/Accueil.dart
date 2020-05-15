import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:test_app_volkeno/Galery.dart';
import 'package:test_app_volkeno/Math.dart';
import 'package:fluid_layout/fluid_layout.dart';
// import 'package:example/basic_layout.dart';
// import 'package:example/columns_complex_fluid_layout.dart';
// import 'package:example/fluid_layout_with_horizontal_scroll.dart';
// import 'package:example/sliver_example.dart';
import 'package:fluid_layout/fluid_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// import 'columns_fluid_layout.dart';
// import 'conditional_fluid_layout.dart';
// import 'custom_card.dart';
// import 'full_fluid_layout.dart';

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
      body: FluidLayout(
          child: Builder(
              builder: (context) => CustomScrollView(
                    slivers: <Widget>[
                      SliverToBoxAdapter(
                          child: SizedBox(
                              height: context.fluid(60, xs: 12, s: 12))),
                      SliverFluidGrid(
                        children: [
                          
                          FluidCell.withFluidHeight(
              
                              size: context.fluid(3, m: 3, s: 5, xs: 5),
                              heightSize: context.fluid(3, m: 3, s: 6, xs: 6),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                    topLeft: Radius.circular(50)
                                    ),
                                 ),
                                color: Color(0xFF4CCBB6),
                                child: Column(
                                children:<Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top:20.0),
                                      child: Center(
                                      child: Icon(Icons.airplanemode_active, color: Colors.white,size: 60,), 
                                     ),                   
                                    ),
                                    Divider(),
                                  Text("Gaye", style: TextStyle(color:Colors.white, fontSize: 20))
                                  ] 
                                ),
                              )),
                               FluidCell.withFluidHeight(
                              
                              size: context.fluid(3, m: 3, s: 5, xs: 5),
                              heightSize: context.fluid(3, m: 3, s: 6, xs: 6),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                    topLeft: Radius.circular(50)
                                    ),
                                 ),
                                color: Color(0xFF4CCBB6),
                                child: Column(
                                children:<Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top:20.0),
                                      child: Center(
                                      child: Icon(Icons.airplanemode_active, color: Colors.white,size: 60,), 
                                     ),                   
                                    ),
                                    Divider(),
                                  Text("Gaye", style: TextStyle(color:Colors.white, fontSize: 20))
                                  ] 
                                ),
                              )),
                            ],
                          ),
                     ],
                  ),
                ), 
            ),       
      );
  }
}