import 'package:adopta_cats/models/cat.dart';
import 'package:adopta_cats/ui/cat_details/details_body.dart';
import 'package:adopta_cats/ui/cat_details/header/details_header.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CatDetailsPage extends StatefulWidget {
  final Cat cat;
  final Object avatarTag;

  CatDetailsPage(
    this.cat, {
      @required this.avatarTag,
    });

  @override
  _CatDetailsPageState createState() => new _CatDetailsPageState();  
}

class _CatDetailsPageState extends State<CatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var linearGradient = new BoxDecoration(
      gradient: new LinearGradient(
        begin: FractionalOffset.centerRight,
        end: FractionalOffset.bottomLeft,
        colors: [
          Colors.lightGreen,
          Colors.lightGreen,
        ]
      )
    );
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Container(
          decoration: linearGradient,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new CatDetailHeader(
                widget.cat,
                avatarTag: widget.avatarTag,
              ),
              new Padding(
                padding: const EdgeInsets.all(24.0),
                child: new CatDetailBody(widget.cat),
              ),
              //TODO Cat Showcase
            ],
          ),
        ),
      ),
    );
  }
}