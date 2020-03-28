import 'package:flutter/material.dart';
import 'package:goat/modal/offwhite_cloth_modal.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';

class OffwhiteclothDetail extends StatefulWidget {
  final Product product;

  const OffwhiteclothDetail({Key key, this.product}) : super(key: key);

  @override
  _OffwhiteclothDetailState createState() => _OffwhiteclothDetailState();
}

class _OffwhiteclothDetailState extends State<OffwhiteclothDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Row(
          children: <Widget>[
            Text('SNEAKER',style: TextStyle(fontSize: 40.0,color: Colors.black),),
          ],
        ),
      ),
      body:ListView(

        children: <Widget>[

          Container(
            color: Colors.white,
            height: 300.0,
            child:  GridTile(
                child: Carousel(
                  boxFit: BoxFit.fill,
                  images: [
                    Image.asset(widget.product.imageUrl),
                    Image.asset(widget.product.imageUrl2)
                  ],
                  autoplay: false,
                  animationCurve: Curves.fastOutSlowIn,
                  dotColor: Colors.white,
                  dotSize: 0,
                  indicatorBgPadding: 0,
                )
            ),
          ),

          Center(

            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Text(widget.product.name,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),),
            ),
          ),

          Divider(),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(

              children: <Widget>[
                Container(
                  height: 100,
                  width: 125,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Brand',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                          textAlign: TextAlign.center,
                        ),
                        Text(widget.product.brand,
                          style: TextStyle(fontSize: 15),)

                      ],
                    ),
                  ),
                ),

                Container(
                  height: 100,
                  width: 125,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Color',style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                        textAlign: TextAlign.center,
                      ),
                      Text(widget.product.color,style: TextStyle(
                          fontSize: 15
                      ),)

                    ],
                  ),
                ),

                Container(

                  height: 100,
                  width: 125,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Price',style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                        textAlign: TextAlign.center,
                      ),
                      Text('\$${widget.product.price}',style: TextStyle(
                        fontSize: 15,
                      ),)

                    ],
                  ),
                )

              ],
            ),
          )
        ],

      ) ,
    );
  }
}
