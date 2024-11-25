///
/// @AUTHOR : Sarjeet Sandhu
/// @DATE : 25/11/24
/// @Message :
///
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/product/product_bloc.dart';
import '../blocs/product/product_event.dart';
import '../blocs/product/product_state.dart';
import '../widgets/product_tile.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products")),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductInitial) {
            return Center(
              child: ElevatedButton(onPressed: (){
                context.read<ProductBloc>().add(FetchProducts(path: 'products'));
              }, child: const Text('Show Products')),
            );
          } else if (state is ProductLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductLoaded) {
            return ListView.builder(
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return ProductTile(product: state.products[index]);
              },
            );
          } else if (state is ProductError) {
            return Center(child: Text(state.error));
          }
          return Container();
        },
      ),
    );
  }
}
