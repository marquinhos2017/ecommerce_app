import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      child: Column(children: [
        Icon(Icons.favorite),
        Text(product.name),
        Text(product.description),
        Text(product.price.toStringAsFixed(2)),
      ]),
    );
  }
}
