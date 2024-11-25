///
/// @AUTHOR : Sarjeet Sandhu
/// @DATE : 25/11/24
/// @Message :
///
import 'dart:convert';

import '../models/product.dart';
import 'package:http/http.dart' as http;


class ProductRepository {
  final String productsApiUrl = "https://fakestoreapi.com/";

  Future<List<Product>> fetchProducts(String path) async {
    final response = await http.get(Uri.parse(productsApiUrl + path));

    if (response.statusCode == 200) {
      final List<dynamic> productList = jsonDecode(response.body);
      return productList.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception("Failed to fetch products");
    }
  }
}
