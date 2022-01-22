import 'package:flutter/material.dart';
import 'package:shopp_app/models/products.dart';
import 'package:shopp_app/main.dart';
import 'package:provider/provider.dart';
import 'package:shopp_app/screens/product-detail_screen.dart';

class ProductItem extends StatelessWidget {
 // final String id;
  //final String title;
  //final String imageUrl;

  //ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product=Provider.of<Product>(context);
    
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(product_details_screen.route_name,arguments: product.id);
            },
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,title:Text(product.title,textAlign: TextAlign.center,) ,
            leading: IconButton(onPressed:(){
              product.togglefavouriteicon();
            
            }, icon:Icon(product.isFavourite ?
            Icons.favorite : Icons.favorite_border),),
            trailing: IconButton(onPressed:(){}, icon:Icon(Icons.shopping_cart_outlined,)
          ))),
    );
  }
}
