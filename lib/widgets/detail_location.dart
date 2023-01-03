import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:travel_app/screens/book_screen.dart';

class DetailLocation extends StatefulWidget {
  DetailLocation({Key? key}) : super(key: key);

  @override
  State<DetailLocation> createState() => _DetailLocationState();
}

class _DetailLocationState extends State<DetailLocation> {
  var myButtonStyle = ButtonStyle(
    shadowColor: MaterialStateProperty.all(Colors.black),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 80,
          width: size.width,
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: const Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Hotels'),
                  style: myButtonStyle,
                ),
                const SizedBox(width: 45),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Foods'),
                  style: myButtonStyle,
                ),
                const SizedBox(width: 45),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Activities'),
                  style: myButtonStyle,
                ),
                const SizedBox(width: 45),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Community'),
                  style: myButtonStyle,
                ),
                const SizedBox(width: 30),
              ],
            ),
          ),
        ),
        Stack(children: [
          Container(
            height: 250,
            width: size.width,
            color: Colors.white,
          ),
          Positioned(
            top: 0,
            left: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YmFsaSUyMGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                fit: BoxFit.cover,
                width: 150,
                height: 200,
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 20,
            child: Container(
                padding: EdgeInsets.all(10),
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff8293AC).withOpacity(0.6),
                        blurRadius: 40,
                        offset: Offset(0, 40),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      child: const Text('Villa Kayu Lama',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.star, color: Colors.yellow),
                          const Icon(Icons.star, color: Colors.yellow),
                          const Icon(Icons.star, color: Colors.yellow),
                          const Icon(Icons.star, color: Colors.yellow),
                          const Icon(Icons.star_half, color: Colors.yellow),
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Positioned(
            top: 20,
            right: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                'https://images.unsplash.com/photo-1524882777936-0eb0285447e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGJhbGklMjBob3RlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                fit: BoxFit.cover,
                width: 150,
                height: 180,
              ),
            ),
          )
        ]),
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
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                  color: Color(0xff18C0C1),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(BookScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
