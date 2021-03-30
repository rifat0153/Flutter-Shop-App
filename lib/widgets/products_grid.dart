import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controllers/products_get.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final ProductsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: controller.items.length,
          itemBuilder: (ctx, i) => ProductItem(
            controller.items[i].id,
            controller.items[i].title,
            controller.items[i].imageUrl,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ));
  }
}
