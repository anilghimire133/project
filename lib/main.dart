import 'package:flutter/material.dart';
import 'package:project1/Design/navigation.dart';
import 'package:project1/Design/homepage.dart';
import 'package:project1/Design/pratice3SignUp.dart';
import 'package:project1/Design/routingclasstwelve.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Railway'
      ),
      routes: Routes.getRoutes(),
      initialRoute:'/'

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Text("AB"),
                    radius: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "SoftwareDeveloper",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Deerwalk,Nepal",
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              height: 200,
              width: 200,
              color: Colors.redAccent,
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    HomePages(),
                ),
                );
              },
              leading: Icon(Icons.add_to_home_screen),
              title: Text("Home"),
            ),
            Divider(
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("About"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 1,
        title: Text("Our AppBar"),
        // titleSpacing: 2,
        // leadingWidth: 40,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_rounded),
            onPressed: () {},
            iconSize: 26,

          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Shopping Cart",
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: ListView(
        children: [Text("Class -8",style: Theme.of(context).textTheme.bodyText1,)],
      ),
    );
  }
}

// class Homepage extends StatelessWidget {
//   // TextStyle textStyle1 = new TextStyle(
//   //     color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);
//
//   Widget buildList(color, text) {
//     return Container(
//       width: 100,
//       height: 25,
//       color: color,
//       child: Center(
//         child: Text(
//
//           text,
//           style: Constants.textStyle1,
//         ),
//       ),
//     );
//   }
//
//   // const Homepage({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: SafeArea(
//         child: ListView(
//           children: [
//             Container(
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.green,
//                       image: DecorationImage(
//                           image: NetworkImage(
//                               'https://images.pexels.com/photos/5509978/pexels-photo-5509978.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
//                           fit: BoxFit.cover),
//                     ),
//                     width: double.infinity,
//                     height: 400,
//                     child: Stack(
//                       children: [
//                         // Image.asset('assets/images/image.jpg'),
//
//                         Positioned(
//                             left: 0,
//                             bottom: 0,
//                             right: 0,
//
//                             // alignment: Alignment.bottomCenter,
//
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   color: Colors.blue.withOpacity(0.6),
//                                   borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(10),
//                                       topRight: Radius.circular(10))),
//                               height: 70,
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 20),
//                                 child: Row(
//                                   children: [
//                                     Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Programming",
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 24,
//                                               letterSpacing: 1.2),
//                                         ),
//                                         Text(
//                                           "Home For Programmer",
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16,
//                                               letterSpacing: 1.2),
//                                         ),
//                                       ],
//                                     ),
//                                     Expanded(
//                                       child: Container(),
//                                     ),
//                                     Icon(
//                                       Icons.favorite_border,
//                                       color: Colors.white,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     Text(
//                                       "1222",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             )),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ListTile(
//                       trailing: Icon(Icons.delete),
//                       title: Text("Nature"),
//                       subtitle: Text("Let's Go With Nature"),
//                       leading: CircleAvatar(
//                         child: Text("A"),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: InkWell(
//                       onTap: () {
//                         print("Custom Button Clicked ");
//                       },
//                       child: Container(
//                         height: 50,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             color: Colors.blue,
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Center(child: Text("Click Me if You can")),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   buildList(Colors.blue, "Hello"),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   buildList(Colors.red, "Hello Again"),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   buildList(Colors.blue, "Hello"),
//                   SizedBox(
//                     height: 10,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
