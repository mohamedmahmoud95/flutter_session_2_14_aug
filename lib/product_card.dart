

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled5/product.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool addedToCart = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 240,
        width: 170,
        color: Colors.grey.shade100,

        child: Padding(
          padding: const EdgeInsets.only(top: 8.0,right: 8,left: 8),
          child: Column(
            children: [
              Container(
                height: 130,
                width: 150,
                color: Colors.grey.shade200,
                child: widget.product.imageUrl!.startsWith("http")? Image.network(widget.product.imageUrl!):Image.asset(widget.product.imageUrl!),
              ),

              const SizedBox(height: 5,),
              Row(
                children: [
                  Text(widget.product.name!),
                ],
              ),
              const SizedBox(height: 5,),

              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 20,
                    initialRating: widget.product.rating!,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber.shade700,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${widget.product.price!}"),
                  IconButton(onPressed: (){
                    setState(() {
                      addedToCart = ! addedToCart;
                    });
                  }, icon: Icon(Icons.shopping_cart_rounded, size: 20,
                    color: addedToCart? Colors.orange.shade800 : Colors.grey,)),
                ],
              )




            ],
          ),
        ),
      ),
    );
  }
}
