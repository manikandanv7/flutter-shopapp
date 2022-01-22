import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp_app/screens/product_overview_screen.dart';
import 'package:shopp_app/screens/product-detail_screen.dart';
import 'models/providers/product_provider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) =>ProductsProvider() ,
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          secondaryHeaderColor: Colors.pink,
          fontFamily: 'Lato'
        ),
        home: Product_overview_screen(),
        routes:{
          product_details_screen.route_name : (ctx)=> product_details_screen()
        },
      ),
    );
  }
}

