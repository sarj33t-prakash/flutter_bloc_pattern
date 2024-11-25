///
/// @AUTHOR : Sarjeet Sandhu
/// @DATE : 25/11/24
/// @Message :
///
import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title?? ''),
      //subtitle: Text("\$${product.price?.toStringAsFixed(2)}"),
    );
  }
}
