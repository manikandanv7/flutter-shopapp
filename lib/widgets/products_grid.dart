import 'package:flutter/material.dart';
import 'package:shopp_app/widgets/productitem.dart';
import 'package:provider/provider.dart';
import 'package:shopp_app/models/providers/product_provider.dart';
import 'package:shopp_app/models/products.dart';

class ProductsGrid extends StatelessWidget {
  // final List<Product> loadedproducts;

  @override
  Widget build(BuildContext context) {
    final productdata = Provider.of<ProductsProvider>(context);
    final products = productdata.items;
    return GridView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemBuilder:(ctx, index) => ChangeNotifierProvider (
          create:(c)=> products[index],
          child :ProductItem(
             // products[index].id,
              //products[index].title,
              //products[index].imageUrl,
            )));
  }
}
