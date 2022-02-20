import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = 'productDetail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedItem = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedItem.title),
      ),
    );
  }
}
