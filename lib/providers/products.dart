import 'package:flutter/cupertino.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
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
        title: 'Yeard shirt',
        price: 29.99,
        imageUrl:
            'https://st3.depositphotos.com/4431055/16128/i/1600/depositphotos_161281072-stock-photo-top-view-of-blue-t.jpg'),
    Product(
        id: 'p3',
        description: 'Shirt nice and cool',
        title: 'IIO shirt',
        price: 49.99,
        imageUrl: 'https://pngimg.com/uploads/tshirt/tshirt_PNG5454.png'),
  ];

  var _showFavoritesOnly = false;

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favorites {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  //}

  //void showAll() {
  //  _showFavoritesOnly = false;
  //  notifyListeners();
  //}

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    //  _items.add(p);
    notifyListeners();
  }
}
