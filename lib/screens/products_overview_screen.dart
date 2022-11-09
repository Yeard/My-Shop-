import 'package:flutter/material.dart';
import 'package:myshop/providers/cart.dart';
import '../widgets/products_grid.dart';
import '../widgets/badge.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';
import '../screens/cart_screen.dart';

enum FilterOption {
  Favorites,
  All,
}

class ProductOverviewScreen extends StatefulWidget {
  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

bool favorites = false;

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOption selectedValue) {
              setState(() {
                if (selectedValue == FilterOption.Favorites) {
                  favorites = true;
                } else {
                  favorites = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                value: FilterOption.Favorites,
                child: Text('Only Favorites'),
              ),
              PopupMenuItem(
                value: FilterOption.All,
                child: Text('ALL'),
              ),
            ],
          ),
          // FittedBox(
          // child:
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
                color: Colors.amberAccent,
                value: cart.itemCount.toString(),
                child: ch as Widget),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
          //  )
        ],
      ),
      body: ProductsGrid(favorites),
    );
  }
}
