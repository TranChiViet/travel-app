import 'package:flutter/material.dart';

class ImageBook extends StatefulWidget {
  ImageBook({Key? key}) : super(key: key);

  @override
  State<ImageBook> createState() => _ImageBookState();
}

class _ImageBookState extends State<ImageBook> {
  Widget buildImage(String imgUrl) {
    return Container(
      
      child: Image.network(
        imgUrl,
        fit: BoxFit.cover,
        width: 75,
        height: 70,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.network(
                  'https://images.unsplash.com/photo-1573790387438-4da905039392?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=425&q=80',
                  fit: BoxFit.cover,
                  width: size.width,
                  height: size.height*0.3,
                ),
              ),
              Positioned(
                top: 70,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_left,
                                color: Colors.black,
                              ))),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              )))
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            height: size.height*0.05,
            decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildImage('https://images.unsplash.com/photo-1573790387438-4da905039392?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=425&q=80'),
                buildImage('https://images.unsplash.com/photo-1573790387438-4da905039392?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=425&q=80'),
                buildImage('https://images.unsplash.com/photo-1573790387438-4da905039392?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=425&q=80'),
                buildImage('https://images.unsplash.com/photo-1573790387438-4da905039392?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=425&q=80'),
                buildImage('https://images.unsplash.com/photo-1573790387438-4da905039392?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=425&q=80'),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
