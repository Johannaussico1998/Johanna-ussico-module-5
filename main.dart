import 'package:flutter/material.dart';
import 'package:johanna_module3/login.dart';
import 'package:johanna_module3/sign_up.dart';
import 'package:johanna_module3/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
void main(){
  widgetFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creative Minds',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Creative Minds Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(50,5,50,5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              ),
              child: const Text("Log In"
                  ""),
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder:(context)=>const login()),
                );
              },
          ),
          ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50,5,50,5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                ),
                child: const Text("Sign up"),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>const signup()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.edit),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
