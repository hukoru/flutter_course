import 'package:flutter/material.dart';
import './product_manager.dart';
import 'package:flutter/rendering.dart';
import './pages/home.dart';

//void main() => runApp(MyApp());
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowMaterialGrid: true,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home: HomePage(),
    );
  }
}
