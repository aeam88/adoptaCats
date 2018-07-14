import 'package:adopta_cats/ui/cat_list.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(new CatBoxApp());
}

class CatBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
        accentColor: Colors.pinkAccent,
        fontFamily: 'Ubuntu'
      ),
      home: new CatList(),
    );
  }
}