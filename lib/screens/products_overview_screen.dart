import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/produtc_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
        id: 'p1',
        description: 'Shirt nice and cool',
        title: 'Red shirt',
        price: 29.99,
        imageUrl:
            'https://st3.depositphotos.com/4431055/16128/i/1600/depositphotos_161281072-stock-photo-top-view-of-blue-t.jpg'),
    Product(
        id: 'p2',
        description: 'Shirt nice and cool',
        title: 'Green shirt',
        price: 49.99,
        imageUrl: 'https://pngimg.com/uploads/tshirt/tshirt_PNG5454.png'),
    Product(
        id: 'p12',
        description: 'Shirt nice and cool',
        title: 'Red shirt',
        price: 29.99,
        imageUrl:
            'https://st3.depositphotos.com/4431055/16128/i/1600/depositphotos_161281072-stock-photo-top-view-of-blue-t.jpg'),
    Product(
        id: 'p3',
        description: 'Shirt nice and cool',
        title: 'Green shirt',
        price: 49.99,
        imageUrl: 'https://pngimg.com/uploads/tshirt/tshirt_PNG5454.png'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
