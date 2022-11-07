


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/app/modules/views/pageone.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor:(Colors.deepPurpleAccent),
      ),


        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: MaterialButton(
                        color: Colors.deepPurpleAccent,
                        textColor: Colors.white,

                        onPressed: () {
                          Get.defaultDialog(
                              title: "Success",
                              content: Column(
                                children: [
                                  Text("Enter User Name "),
                                  TextFormField()
                                ],
                              ) ,
                              titleStyle: TextStyle(color: Colors.white, fontSize: 10),


                             textCancel: "cancel",
                              onCancel: () {
                                print("cancel");
                              },

                              textConfirm: "confirm",
                              onConfirm: () {
                                print("confirm");
                              }


                          );
                        },
                        child: Text("show dialog", style: TextStyle(fontSize: 20, ),),

                      )),
                  Center(
                    child: MaterialButton(
                      color: Colors.deepPurpleAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Get.to(TestApi());
                      },
                      child: Text("go to page one"),
                    ),)






                ],
            )));





}
}
