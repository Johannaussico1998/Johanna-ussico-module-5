 import 'package:flutter/material.dart';
import 'package:johanna_module3/profile.dart';
import 'package:johanna_module3/sign_up.dart';

import 'login.dart';
class  dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:const Text("Dashboard"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
      children: <Widget>[
    Container(
          height: 50,
        padding: const EdgeInsets.fromLTRB(20,10,20,10),
        child: ElevatedButton(
        style:ElevatedButton.styleFrom(
        primary:Colors.deepPurple,
        ),
        child: const Text('Sign Up'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder:(context)=>const signup())   ,
          );
    },
    )),
      Container(
          height: 50,
          padding: const EdgeInsets.fromLTRB(20,10,20,10),
          child: ElevatedButton(
            style:ElevatedButton.styleFrom(
              primary:Colors.deepPurple,
            ),
            child: const Text('Log In'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder:(context)=>const login()),
              );
            },
          ),
      ),
      Container(
          height: 50,
          padding: const EdgeInsets.fromLTRB(20,10,20,10),
          child: ElevatedButton(
            style:ElevatedButton.styleFrom(
              primary:Colors.deepPurple,
            ),
            child: const Text('Profile'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder:(context)=>const profile()),
              );
            },
          ),
      ),
      Container(
        height: 50,
        padding: const EdgeInsets.fromLTRB(20,10,20,10),
        child: ElevatedButton(
          style:ElevatedButton.styleFrom(
            primary:Colors.deepPurple,
          ),
          child: const Text('Feature'),
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder:(context)=>const profile()),
            );
          },
        ),
      ),
      ],
    ),
      ),
    );
  }
}
