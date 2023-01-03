import 'package:flutter/material.dart';
import 'package:travel_app/widgets/detail_location.dart';

class LocationSreen extends StatelessWidget {
  static const routeName = 'location';
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    color: Colors.grey,
                    width: size.width,
                    height: 785,
                  ),
                ),
                Container(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1573790387438-4da905039392?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=425&q=80',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 350,
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 160,
                  child: Column(
                    children: [
                      Text(
                        'BALI',
                        style: TextStyle(fontSize: 34, color: Colors.white),
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('4.9'),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 0,
                  right: 0,
                  child: DetailLocation(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
