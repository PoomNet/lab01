import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }

}

class MyCustomFormState extends State<MyCustomForm>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom form"),
      ),
      body: Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          Image.asset("resources/1.jpg",height: 100),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'E-mail',
              hintText: 'Please input your email'
            ),
            validator: (value){
              if (value.isEmpty){
                return 'Please enter some text';
              }
            },
            keyboardType: TextInputType.emailAddress,
            onSaved: (value) => print(value),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.vpn_key),
              labelText: 'Password',
              hintText: 'Please input your password'
            ),
            validator: (value){
              if (value.isEmpty){
                return 'Please enter some text';
              }
            },
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            onSaved: (value) => print(value),
          ),
          RaisedButton(
            child: Text("continue"),
            onPressed: () {
              _formKey.currentState.validate();
            }
          ),
        ],
      ) ,
      )
    );
    // return Form(
    //   key: _formKey,
    //   child: ListView(),
    // );
  }}