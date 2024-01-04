import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: "Sleek Running Marvels",
        price: 89.99,
        description:
            "Stylish running shoes with a lightweight mesh upper for breathability.",
        imagePath: "assets/1_756697_FS_ALT1.jpeg"),
    Product(
        name: "Urban Explorer Boots",
        price: 142.99,
        description: "ugged, waterproof leather boots with a fashionable edge.",
        imagePath: "assets/1963661720_zm.jpg"),
    Product(
        name: "Elegance in Motion Heels",
        price: 139.99,
        description:
            "Timeless pointed-toe heels for formal occasions with a comfortable insole.",
        imagePath: "assets/bb480lba.bne_0.jpg"),
    Product(
        name: "Product 4",
        price: 29.99,
        description: "Item 4 description",
        imagePath: "assets/new-balance-480-panske-tenisky-bila-bb480lwn.jpg"),
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
