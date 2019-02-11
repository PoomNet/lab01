import 'package:flutter/material.dart';
import 'detail_screen.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("first screen"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("go to second"),
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(
              builder: (context) => DetailScreen(title: "FUCK")
            )
            );
          }
        ),
      ),
  );
  
}
}