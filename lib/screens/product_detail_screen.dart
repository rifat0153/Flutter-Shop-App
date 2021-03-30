import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  final String title = Get.arguments['title'] as String;
  final String id = Get.arguments['id'] as String;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('Product Title: $title'),
            Text('Product Id: $id'),
          ],
        ),
      ),
    );
  }
}
