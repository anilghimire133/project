import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _username = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _email;
  String _phone;
  String _description;
  String _fullName;
  bool _acceptTerms = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey <ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text("SignUp")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    // labelText: "UserName",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    ),
                    helperText: "Please use numbers and letters",
                    hintText: "UserName",
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.5),
                    hintStyle: TextStyle(color: Colors.black),

                    // border: InputBorder.none,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                controller: _username,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(

                    // labelText: "UserName",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                      size: 30,
                    ),
                    // helperText: "Please use numbers and letters",
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.5),
                    hintStyle: TextStyle(color: Colors.black),
                    // border: InputBorder.none,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                controller: _passwordController,
                obscureText: true,
                validator: (String val) {
                  if (val.isEmpty) {
                    return "Password cannot be empty";
                  } else if (val.length < 6) {
                    return "Password must be greater than 6 characters,";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    // labelText: "UserName",
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 30,
                    ),
                    // helperText: "Please use numbers and letters",
                    hintText: "Phone",
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.5),
                    hintStyle: TextStyle(color: Colors.black),
                    // border: InputBorder.none,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    // labelText: "UserName",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 30,
                    ),
                    // helperText: "Please use numbers and letters",
                    hintText: "Email",
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.5),
                    hintStyle: TextStyle(color: Colors.black),
                    // border: InputBorder.none,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  // labelText: "UserName",
                  prefixIcon: Icon(
                    Icons.description,
                    color: Colors.black,
                    size: 30,
                  ),
                  // helperText: "Please use numbers and letters",
                  hintText: "Description",
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.5),
                  hintStyle: TextStyle(color: Colors.black),
                  // border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                textCapitalization: TextCapitalization.sentences,
                maxLines: null,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(



                decoration: InputDecoration(
                  // labelText: "UserName",
                  prefixIcon: Icon(
                    Icons.pages_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  hintText: "FullName",
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.5),
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none,
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    ),
                    borderRadius: new BorderRadius.circular(40.0),

                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(40.0),
                    borderSide:  BorderSide(color: Colors.blue ),

                  ),
                ),

                textCapitalization: TextCapitalization.words,
                maxLines: null,
                maxLength: 200,
                onChanged: (String val) {
                  setState(() {
                    this._fullName = val;
                  });
                },


              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _acceptTerms,
                    onChanged: (bool val) {
                      setState(() {
                        this._acceptTerms = val;
                      });
                    },
                  ),
                  Text("Accept All the Terms.")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.purple,
                  textColor: Colors.white54,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      print("Form is valid"); // print(this._fullName);

                    } else {
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text("Please fill out the form properly")));
                    }
                    // print(this._username.text);
                  },
                  child: Text("Save"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
