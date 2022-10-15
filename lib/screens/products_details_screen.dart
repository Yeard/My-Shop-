import 'package:flutter/material.dart';

class ProductsDetailsScreen extends StatelessWidget {
  // final String title;
  //ProductsDetailsScreen(this.title);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(productId),
      ),
    );
  }
}
