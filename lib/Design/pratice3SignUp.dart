import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpP extends StatefulWidget {
  @override
  _SignUpPState createState() => _SignUpPState();
}

class _SignUpPState extends State<SignUpP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 10,left: 10),
          child: Container(
            margin: EdgeInsets.only(left: 15, top: 30,right: 15),
            child: Form(
              child: ListView(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BackButton(
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Let's Get Started!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.4,
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Create an account to Q Allure to get all features",
                        style: TextStyle(letterSpacing: 0.3),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Jhone Williams",
                        hintStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(30)
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(30)
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Phone",
                        hintStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          FontAwesomeIcons.mobileAlt,
                          color: Colors.blue,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(30)
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          FontAwesomeIcons.unlock,
                          color: Colors.blue,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(30)
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          FontAwesomeIcons.unlock,
                          color: Colors.blue,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(30)
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width*0.50,
                          child: RaisedButton(onPressed: (){},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text("Create".toUpperCase(),style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                  ),),
                                ],
                              )

                            ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Already have an account? "),
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context, '/');
                       },
                       child: Text("Login Here",style: TextStyle(
                         color: Colors.blue
                             ,
                         fontWeight: FontWeight.bold
                       ),),
                     ),
                   ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
