
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/Design/pratice3SignUp.dart';
import 'package:project1/Design/routingclasstwelve.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Container(
                  child: Image(
                    height: 150,
                    width: double.infinity,
                    image: NetworkImage(
                        'https://png.pngtree.com/png-clipart/20191120/original/pngtree-gradient-fingerprint-unlock-login-computer-png-image_5044947.jpg'),),
                  // height: 150,
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome back!",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(

                        "Log in to your existent account of Q Allure",
                        style: TextStyle(
                          fontSize: 15
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 20,
                    ),
                    hintText: "Jonewilliasm@gmail.com",
                    filled: true,
                    hintStyle: TextStyle(color: Colors.blue),

                    // border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                  controller: _email,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.blue,
                      size: 20,
                    ),
                    hintText: "Password",
                    // filled: true,
                    hintStyle: TextStyle(color: Colors.blue),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: new BorderRadius.circular(40.0),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(40.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                  controller: _email,
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CustomButton(
                      onPressed: () {
                        print("Tapped Me");
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Text(
                  "Or connect using",
                  style: TextStyle(
                      letterSpacing: 1, fontSize: 18, color: Colors.black26),
                )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      SizedBox(
                        height: 50,
                        child: RaisedButton(

                          onPressed:() {},
                          child: Row(
                            children: [
                              Icon(FontAwesomeIcons.facebookF,
                                color: Colors.white,
                              ),
                              SizedBox(width:5,),
                              Text("Facebook",style: TextStyle(
                                fontSize: 22,
                                color: Colors.white


                              ),)

                            ],
                          ),

                        color: Color(0xFF3B5998),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ), SizedBox(
                        height: 50,

                        child: RaisedButton(

                          onPressed:() {},
                          child: Row(
                            children: [
                              Icon(FontAwesomeIcons.google,
                                color: Colors.white,
                              ),
                              SizedBox(width:5,),
                              Text("Google",style: TextStyle(
                                fontSize: 22,
                                color: Colors.white


                              ),)

                            ],
                          ),

                        color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",),
                    SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, Routes.homepage);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            SignUpP(),
                        ),
                        );
                      },
                      child: Text("Sign Up",
                      style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 16,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold

                      ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.blue,
      splashColor: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, Routes.homepage);
        },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                SizedBox(
                  width: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    "LOG IN",
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
