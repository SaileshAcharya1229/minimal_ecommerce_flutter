import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //product for sale
  final List<Product> _shop = [
    //product 1
    Product(
        name: "Watch",
        price: 2000,
        description:
            "The attractive and beautiful watch with black color, reasonable price.",
        imagePath: "assets/watch.jpg"),
    Product(
        name: "Glass",
        price: 5600,
        description: "New Mew glass with best price.",
        imagePath: "assets/glasses.jpg"),
    Product(
        name: "Camera",
        price: 100001,
        description: "Light and advance camera with multiple features.",
        imagePath: "assets/camera.jpg"),
    Product(
        name: "Mobile",
        price: 250000,
        description: "Samsung S24 with best battery backup.",
        imagePath: "assets/mobile.jpg")
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
