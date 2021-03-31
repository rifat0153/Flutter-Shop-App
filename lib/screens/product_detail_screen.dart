import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/providers/products_get.dart';
import 'package:shop_app/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  final String title = Get.arguments['title'] as String;
  final String id = Get.arguments['id'] as String;

  final ProductsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final Product loadedProduct = controller.findById(id);

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.findById(id).title),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Product Title: ${loadedProduct.title}'),
            Text('Product Id: ${loadedProduct.title}'),
          ],
        ),
      ),
    );
  }
}
