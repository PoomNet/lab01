import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("second screen"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("second screen"),
          onPressed: () {
            Navigator.pop(context);
          }
        )
        
      ),
  );
  
}
}