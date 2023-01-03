import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/widgets/image_book.dart';

class BookScreen extends StatelessWidget {
  static const routeName = 'book';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.date_range),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          )
        ],
      ),
      body: Column(children: [
        Container(
          height: size.height * 0.35,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
          child: ImageBook(),
        )
      ]),
    );
  }
}
