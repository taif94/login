

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestApi extends StatefulWidget {
  const TestApi({Key? key}) : super(key: key);

  @override
  State<TestApi> createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {


  List posts = [];
  Future getPost() async {

     String url = "https://jsonplaceholder.typicode.com/posts";

    var  reponse = await http.get(Uri.parse(url));
    var responsebody = jsonDecode(reponse.body);

    setState((){
      posts.addAll(responsebody);
    });
    print(posts);
  }

  @override

  void initState() {
    getPost();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page One api"),
        backgroundColor:(Colors.deepPurpleAccent),),

      body: posts == null || posts. isEmpty?
        Center(child: CircularProgressIndicator())
      :

      ListView.builder(
          itemCount: posts.length,
          itemBuilder:  (context , i) {
            return Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Text("${posts[i]['title']}"),
            );
          }),










    );

  }
}


