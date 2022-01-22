import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
class CartItem{

  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem(
     this.id,
    this.quantity,
    this.price,
    this.title
  );

}
class Cart with ChangeNotifier{

 


}