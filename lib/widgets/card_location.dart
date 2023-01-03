import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CardLocation extends StatefulWidget {
  const CardLocation({Key? key}) : super(key: key);

  @override
  State<CardLocation> createState() => _CardLocationState();
}

class _CardLocationState extends State<CardLocation> {
  int _currentIndex = 0;
  List<Widget> body = const[
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.location_on),
    Icon(Icons.person)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                'https://images.unsplash.com/photo-1537953773345-d172ccf13cf1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8QmFsaXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'DETAILS',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                ReadMoreText(
                  'Surrounded by rice fields, Villa Kayu Lama offers a peaceful retreat in Ubud. Guest can take a leisurely swim in the private pools or enjoy relaxing in-villa message. Free shuttle to Unbud centre is available thrice day based on schedule. ',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}
