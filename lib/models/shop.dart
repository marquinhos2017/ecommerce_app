import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      price: 49.99,
      description: "Item 1 description",
      //imagePath: "imagePath")
    ),
    Product(
      name: "Product 2",
      price: 42.99,
      description: "Item 2 description",
      //imagePath: "imagePath")
    ),
    Product(
      name: "Product 3",
      price: 39.99,
      description: "Item 3 description",
      //imagePath: "imagePath")
    ),
    Product(
      name: "Product 4",
      price: 29.99,
      description: "Item 4 description",
      //imagePath: "imagePath")
    ),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;
  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
