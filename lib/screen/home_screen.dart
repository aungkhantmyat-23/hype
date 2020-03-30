import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:goat/screen/profile.dart';
import 'package:goat/screen/search_screen.dart';
import 'package:goat/screen/tabview/apperel.dart';
import 'package:goat/screen/tabview/new_arrival.dart';
import 'package:goat/screen/tabview/sneakers.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
TabController _tabController;
@override
void initState(){
  super.initState();
  _tabController=TabController(length: 3, vsync: this);
  _tabController.addListener(_tabChanged);
}
@override
void dispose(){
  super.dispose();
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  _tabController.dispose();
}
void _tabChanged(){
  if(_tabController.indexIsChanging){
    print('tabChanged:${_tabController.index}');
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Row(
          children: <Widget>[

            Image(image: AssetImage('assets/images/logo1.png'),height: 70,width: 70,),
            Text('SNEAKER',style: TextStyle(fontSize: 40.0,color: Colors.black),),
          ],
        ),
      bottom:PreferredSize(
          child: Container(
            color: Colors.blueGrey.shade100,
            height: 50.0,
            width: double.infinity,
            child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs:<Widget>[
                  Tab(
                    text: 'SNEAKERS',
                  ),
                  Tab(
                    text: 'APPAREL',
                  ),
                  Tab(
                    text: 'NEW ARRIVAL',
                  ),

                ]
            ),
          ),
          preferredSize: Size.fromHeight(50.0)),

      ),
        body: SafeArea(

            child:TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Sneakers(),
                  Apperel(),
                  New_arrival(),
                ],
            ) ),

        bottomNavigationBar: SafeArea(

          child: BottomAppBar(

            color: Colors.blueGrey,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (_)=>
                            HomeScreen(),
                        )

                    );
                  },
                  icon: Icon(Icons.home),
                  color: Colors.black87,
                ),
                IconButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_)=>
                            SearchScreen(),
                        )
                    );
                  },
                  icon: Icon(Icons.search),
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_)=>
                            Profile(),
                        )
                    );
                  },
                  icon: Icon(Icons.person),
                  color: Colors.black,
                ),
              ],

            ),
          ),
        )





    );
  }
}
