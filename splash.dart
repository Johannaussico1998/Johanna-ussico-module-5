import 'dart:async';
import 'package:flutter/material.dart';
import 'package:johanna_module3/main.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widgetbuild (BuildContext context){
  return MaterialApp(
      title: 'Splash Screen',
  theme: ThemeData(
      primarySwatch:Colors.purple,
  ),
  home: MyHomePage(),
  debugShowCheckedModeBanner: false,
      );
  }
}
class MyHomePage extends StatefulWidget{
  _MyHomePageState createState()=>_MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  @override
  void initState(){
    super.initState();
    Timer (const Duration(seconds:3),()=>
        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> main()
        ),
        ),
    );
  }
  @override
  Widget build (BuildContext context){
    return Container(
      color:Colors.white,
      child: FlutterLogo(size: MediaQuery.of(context).size.height),
    );
  }
}