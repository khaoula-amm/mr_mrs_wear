import 'package:flutter/material.dart';
import 'package:mr_mrs_wear/pages/HomePage.dart';



void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/":(context) => HomePage()
      },
    );

  }
}