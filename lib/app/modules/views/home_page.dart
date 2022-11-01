


import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor:(Colors.deepPurpleAccent),
      ),
      body: Center(
        child: Text("Hi Hassan ",
          style: TextStyle(fontSize: 20, color: Colors.black87),),
      ),


    );
  }
}
