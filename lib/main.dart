import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controllers/products_get.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Providing Parent Widget with the Product Conctroller
  final ProductsController controller = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
      home: ProductsOverview(),
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(
            name: ProductDetailScreen.routeName,
            page: () => ProductDetailScreen()),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: Container(
          child: Text(
            'hello',
          ),
        ),
      ),
    );
  }
}
