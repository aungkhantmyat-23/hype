import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:goat/screen/home_screen.dart';
import 'package:goat/screen/profile.dart';

class SearchScreen extends StatelessWidget {
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
      ),
body: SafeArea(
  child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
  child: SearchBar(onSearch: null, onItemFound: null),

  ),

),
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
