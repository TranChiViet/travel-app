import 'package:flutter/material.dart';
import 'package:travel_app/widgets/card_location.dart';
import 'package:travel_app/widgets/search_location.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello, Viet'),
        centerTitle: true,
        leading: const CircleAvatar(
          radius: 25,
          backgroundColor: Colors.amberAccent,
          child: Text(
            'V',
            style: TextStyle(fontSize: 25),
          ),
        ),
        actions: [
          CircleAvatar(
            child: IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              child: const SearchLocation(),
            ),
            Container(
              height: 450,
              width: double.infinity,
              child: const CardLocation(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 70),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.location_on),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
