import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goat/modal/product_modal.dart';
import 'package:goat/screen/verticalDivider.dart';

class ProductDetail extends StatefulWidget {
  final Product product;

  const ProductDetail({Key key, this.product}) : super(key: key);


  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  var _sizeArray=["7","7.5","8","8.5","9","9.5","10","10.5","11"];
  String currentSelectedSize='9';
  int totalQty=0;
  
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
      body:ListView(

        children: <Widget>[

          Container(
            height: 300.0,
            child:  GridTile(
              child: Carousel(
                boxFit: BoxFit.fill,
                  images: [
                    Image.asset(widget.product.imageUrl),
                    Image.asset(widget.product.imageUrl2),
                    Image.asset(widget.product.imageUrl3)
                  ],
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(seconds: 5),
                dotColor: Colors.white,
                dotSize: 4.0,
                indicatorBgPadding: 2.0,
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
