import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/book_screen.dart';
import 'package:travel_app/screens/location_screen.dart';
import 'helpers/custom_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookScreen(),
      // home: const HomeScreen(),
      routes: {
        LocationSreen.routeName : (ctx) => LocationSreen(),
        BookScreen.routeName : (ctx) => BookScreen(),
      },
    );
  }
}
