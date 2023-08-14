

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled5/product.dart';
import 'package:untitled5/product_card.dart';

void main()
{
  runApp(MyApp());
}




class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool addedToCart = false;
  String imageUrl = 'images/bagImage.jpg';
  double price = 1000;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shopping app"),
        ),
        
        body:
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,

                  children: [

                    ...products.map((product) => ProductCard(product: product)).toList(),
                  ],
                ),
              ),
            ),
          ),


          // Center(
          //   child: productCard(bag1)
          // )
      ),
    );
  }

}
