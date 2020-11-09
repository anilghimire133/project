import 'package:flutter/material.dart';
import 'package:project1/post.dart';

class Navigator_Test extends StatefulWidget {
  @override
  _Navigator_TestState createState() => _Navigator_TestState();
}

class _Navigator_TestState extends State<Navigator_Test> {
  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
    BottomNavigationBarItem(
        icon: Icon(Icons.video_library), title: Text("Videos")),
    BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profile")),
    BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("Setting"))
  ];
  List<Widget> _pages = [Home(), Videos(), Profile(), Setting()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Facebook",
          style: TextStyle(),
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

var data = [
  {
    "id": 1,
    "title": "Flutter",
    "subtitle": "Flutter for mobile app development",
    "descritpion": "For ison samndnd nfnnfnfmfmmfmfm"
  },
  {
    "id": 2,
    "title": "testing",
    "subtitle": "Flutter for mobile app development",
    "descritpion":
        "You can use AJAX to call the Random User Generator API and will receive a randomly generated user in return. If you are using jQuery, you can use the "
            ".ajax() function in the code snippet below to get started."
  },
  {
    "id": 3,
    "title": "c++",
    "subtitle": "Flutter for mobile app development",
    "descritpion":
        "You can use AJAX to call the Random User Generator API and will receive a randomly generated user in return. If you are using jQuery, you can use the .ajax() function in the code snippet below to get started."
  },
  {
    "id": 4,
    "title": "mern",
    "subtitle": "Flutter for mobile app development",
    "descritpion":
        "You can use AJAX to call the Random User Generator API and will receive a randomly generated user in return. If you are using jQuery, you can use the .ajax() function in the code snippet below to get started."
  },
  {
    "id": 5,
    "title": "php",
    "subtitle": "Flutter for mobile app development",
    "descritpion":
        "You can use AJAX to call the Random User Generator API and will receive a randomly generated user in return. If you are using jQuery, you can use the ajax() function in the code snippet below to get started."
  },
];

class _HomeState extends State<Home> {
  List<Post> posts = [];
  TextEditingController _name;
  @override
  void initState() {
    super.initState();
    loadData(data);
  }
  @override
  void dispose(){
    super.dispose();
    _name.dispose();

  }

  @override
  Widget build(BuildContext context) {


    return ListView.separated(

      itemBuilder: (_,int index){
        Post post = posts[index];
        return ListTile(
          // title: Text(post.title),

        );
      },
    );
  }

  void loadData(data) {
    List<Post> allPosts = new List<Post>();
    data.forEach((item) {
      Post post = new Post(
          id: item['id'],
          title: item['title'],
          description: item['description'],
          subtitle: item['subtitle']);
      allPosts.add(post);
    });
  }
}

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Videos page"),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home page"),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home page"),
    );
  }
}

//Tab Bar
//Card
// ListView.builder
// ListView.separated()

//bottomSheet
//Dialog
//Dismissable
