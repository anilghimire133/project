import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClassNine extends StatefulWidget {
  @override
  _ClassNineState createState() => _ClassNineState();
}

class _ClassNineState extends State<ClassNine> {
  int count = 0;
  List<String> lists = [
    "Apple",
    "Onion",
    "Texsy",
    "Apple",
    "Onion",
    "Texsy",
    "Apple",
    "Onion",
    "Texsy"
  ];

  increment(value) {
    setState(() {
      count = count + value;
    });
  }

  decrement(value) {
    setState(() {
      count = count - value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   hoverColor: Colors.black,
      //   onPressed: () {
      //     setState(() {
      //       count = count + 1;
      //       print(count);
      //     });
      //   },
      //   child: Icon(Icons.add),
      // ),
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.red,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      color: Colors.green,
                      height: 100,
                      width: 100,
                      // height: MediaQuery.of(context).size.height * 0.1,
                      // width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),

                    // Text(
                    //   count.toString(),
                    //   style: TextStyle(fontSize: 40),
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // RaisedButton(
                    //   onPressed: () {
                    //     increment(1);
                    //   },
                    //   child: Text("Increment"),
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // RaisedButton(
                    //   onPressed: (){
                    //     decrement(1);
                    //   },
                    //   child: Text("Decrement"),
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // RaisedButton(
                    //   onPressed: () {
                    //     decrement(5);
                    //   },
                    //   child: Text("Dec by 5"),
                    // )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Recently added",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),

                    // Text(
                    //   count.toString(),
                    //   style: TextStyle(fontSize: 40),
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // RaisedButton(
                    //   onPressed: () {
                    //     increment(1);
                    //   },
                    //   child: Text("Increment"),
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // RaisedButton(
                    //   onPressed: (){
                    //     decrement(1);
                    //   },
                    //   child: Text("Decrement"),
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // RaisedButton(
                    //   onPressed: () {
                    //     decrement(5);
                    //   },
                    //   child: Text("Dec by 5"),
                    // )
                  ],
                ),
              ),
              Container(
               height: 250,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return index != 4
                        ? ListTile(
                            title: Text(lists[index]),
                            leading: CircleAvatar(
                              child: Text(
                                index.toString(),
                              ),
                            ),
                          )
                        : Container(
                            child: Text(index.toString()),
                          );
                  },
                  itemCount: lists.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
