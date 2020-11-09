
import 'package:flutter/material.dart';

class PlaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text("Place List"),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.article,
                  color: Colors.white,
                ),
              )
            ],
          ),
          body: Center(
            child: Container(
              child: buildCardView(),
            ),
          )),
    );
  }

  Widget buildCardView() {
    return Card(
      elevation:3,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/5509978/pexels-photo-5509978.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                  fit: BoxFit.cover),
            ),
            width: 100,
            height: 100,
          ),
        ],


      ),

    );
  }

  }

