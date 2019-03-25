import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  final _formkey = GlobalKey<FormState>();

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("register new user"),
      ),
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
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty && value.length < 8)
                    return "Password is required";
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "re password"),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) return "Password is required";
                },
              ),
              Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: RaisedButton(
                    child: Text("register"),
                    onPressed: () {
                      auth
                          .createUserWithEmailAndPassword(
                              email: "pnet10@gmail.com", password: "12345678")
                          .then((FirebaseUser user) {
                            user.sendEmailVerification();
                        print("firebase return asdfsfd $user.email");
                      }).catchError((onError) {
                        print("$onError");
                      });
                    },
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
