// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopp_app/widgets/productitem.dart';
import 'package:provider/provider.dart';
import '../models/providers/product_provider.dart';
class product_details_screen extends StatelessWidget {


  //final String title;

 // product_details_screen(this.title);
static const route_name='/product-detail';
  @override
  Widget build(BuildContext context) {
    final productid=ModalRoute.of(context)!.settings.arguments as String;
    final  loadedtitle=Provider.of<ProductsProvider>(context).items.firstWhere((prod)=>prod.id == productid) ;
    //String title=loadedtitle;
    return Scaffold(
      appBar: AppBar(title:Text(loadedtitle.title) ,),
    );
  }
}