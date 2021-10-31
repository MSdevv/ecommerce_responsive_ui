import 'package:flutter/material.dart';
import '/models/product_model.dart';

class Cart {
  final Product product;
  final int quantity;

  Cart({
    @required this.product,
    @required this.quantity,
  });
}

//Demo data
List<Cart> demoCart = [
  Cart(product: demoProducts[0], quantity: 2),
  Cart(product: demoProducts[1], quantity: 1),
  Cart(product: demoProducts[2], quantity: 1),
  Cart(product: demoProducts[3], quantity: 3),
];
