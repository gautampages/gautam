import 'dart:async';
import 'package:admin/Login.dart';

import './Home.dart';
import 'package:flutter/material.dart';
class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
 

  @override
  void initState() {

    
    Timer(Duration(seconds: 2), ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage('assets/splash.png'),fit: BoxFit.cover,),
      
    );
  }
}