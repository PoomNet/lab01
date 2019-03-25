import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "email"),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "password"),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                flex: 1,
                child: RaisedButton(
                  child: Text("signin"),
                  onPressed: () {
                    auth.signInWithEmailAndPassword(
                      email: "pnet10@gmail.com",
                      password: "12345678",
                    ).then((FirebaseUser user){
                      if (user.isEmailVerified) {
                        print("go to home screen");
                      }
                      else{
                        print("pls check");
                      }
                    });
                  },
                ),
                  )
                ]
              ),           
              FlatButton(
              child: Text("Register new user"),
              onPressed: () {
                Navigator.pushNamed(context, "/register");
              },)
                
              
            ],
          ),
        ),
      ),
    );
  }
}
