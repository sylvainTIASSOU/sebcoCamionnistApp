
import 'dart:async';
import'package:flutter/material.dart';


import 'package:flutter/services.dart';
import 'package:sebco_camioniste/views/pages/page.dart';
class SplashPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => SplashState();
}
class SplashState extends State<SplashPage>
{
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 400), () {
      setState(() {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
          return Pages();
        }));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('text'),)
    );
  }
}
