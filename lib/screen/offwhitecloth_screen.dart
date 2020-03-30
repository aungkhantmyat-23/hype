import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:goat/modal/offwhite_cloth_modal.dart';
class OffWhiteClothScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: <Widget>[
            Text('HYPE',style: TextStyle(color: Colors.white,fontSize: 40.0,),)
          ],
        ),

      ),
      body: SafeArea(
        child:Container(
        child: GridView.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2/3,
          crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(0.2),
          decoration: BoxDecoration(
              border:Border.all(color: Colors.black,width: 0.0)
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:AssetImage(products[index].imageUrl)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text(products[index].name),
                )
              ],
            ),
          ),
        );
      },
    ),
    )
      )
    );
  }
}
