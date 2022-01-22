

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp_app/models/products.dart';
import 'package:shopp_app/models/providers/product_provider.dart';
//import 'package:shopp_app/widgets/productitem.dart';
import 'package:shopp_app/widgets/products_grid.dart';
enum filteroptions{
  favourites,
  all
}

class Product_overview_screen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final productcontainer =Provider.of<ProductsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('my shop'),
        actions: [PopupMenuButton(
                 onSelected: (filteroptions selectedvalue) {
                   if(selectedvalue==filteroptions.favourites)
                   productcontainer.showfavouriteonly();
                   else
                   {
                     productcontainer.showfavouriteall();
                   }

                 } ,
                   itemBuilder:(_)=>[
          PopupMenuItem(child: Text('FAVOURITES'),value: filteroptions.favourites),
          PopupMenuItem(child: Text('ALL'),value: filteroptions.all,),
        ],icon:Icon(Icons.more_vert_rounded))],
      ),
      body:  ProductsGrid(),
    );
  }
}


