///
/// @AUTHOR : Sarjeet Sandhu
/// @DATE : 25/11/24
/// @Message :
///
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'product_event.dart';
import 'product_state.dart';
import '../../repositories/product_repository.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;

  ProductBloc(this.productRepository) : super(ProductInitial()){
    on<FetchProducts>(_fetchProducts);
  }

  /// Fetch Products
  FutureOr<void> _fetchProducts(FetchProducts event, Emitter<ProductState> emit) async{
    emit(ProductLoading());
    try {
      final products = await productRepository.fetchProducts(event.path);
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}
