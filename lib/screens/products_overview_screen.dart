import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/providers/products_get.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/products_grid.dart';

class ProductsOverview extends StatelessWidget {
  final ProductsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    // List<Product> loadedProducts = controller.items;

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
