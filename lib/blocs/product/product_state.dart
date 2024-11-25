///
/// @AUTHOR : Sarjeet Sandhu
/// @DATE : 25/11/24
/// @Message :
///
import '../../models/product.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;

  ProductLoaded(this.products);
}

class ProductError extends ProductState {
  final String error;

  ProductError(this.error);
}
