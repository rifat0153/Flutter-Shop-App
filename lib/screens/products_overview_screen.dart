import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shop_app/providers/product.dart';
import 'package:shop_app/widgets/products_grid.dart';

class ProductsOverview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: ProductsGrid(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/home');
        },
      ),
    );
    return scaffold;
  }
}
