import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo_bloc/screens/product_screen.dart';
import 'blocs/product/product_bloc.dart';
import 'repositories/product_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductBloc(ProductRepository()),
        ),

      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: ProductScreen(),
      ),
    );
  }
}
