import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //product for sale
  final List<Product> _shop = [
    //product 1
    Product(
      name: "product 1",
      price: 100,
      description: "description..",
    ),
    Product(
      name: "product 2",
      price: 100,
      description: "description..",
    ),
    Product(
      name: "product 3",
      price: 100,
      description: "description..",
    ),
    Product(
      name: "product 4",
      price: 100,
      description: "description..",
    )
  ];

  //user cart

  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removerFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
