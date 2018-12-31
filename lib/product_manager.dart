import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct}) {
    print('[ProductsManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductsManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    //print('[ProductsManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProducts(String product) {
    setState(() {
      _products.add(product);
    });
    //print(_products);
  }

  @override
  Widget build(BuildContext context) {
    //print('[ProductsManager State] build()');
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductControl(_addProducts),
      ),
      Expanded(child: Products(_products))
    ]);
  }
}
