import 'package:flutter/material.dart';
import 'dashboard.dart';
class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:const Text("Feature"),
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
    child: const Text('Confirm'),
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder:(context)=>const
              dashboard()),
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
