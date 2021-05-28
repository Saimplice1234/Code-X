import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double initialOpacity=1;

  @override
  void initState(){
    Timer(Duration(seconds:5),(){
      // ignore: missing_return
      setState(() {
        initialOpacity=0;
      });
      Timer(Duration(seconds:1),(){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
               return MyHomePage();
          }));
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:Color(0xff130F40),
        body:AnimatedOpacity(
          duration:Duration(seconds:1),
          opacity:initialOpacity,
          child: Container(
            child:Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                  BounceInDown(
                    delay:Duration(seconds:1),
                    child:Center(
                      child:Hero(
                          tag:"LogoApp",
                          child: Image.asset('assets/logo.jpg',width:71,height:71,)),
                    ),
                  ),
                  SizedBox(height:12,),
                  FadeIn(
                    delay:Duration(seconds:2),
                    child:Text("Code X",style:GoogleFonts.poppins(color:Colors.white,fontSize:23,fontWeight:FontWeight.bold),),
                  ),
                ]
            )
      ),
        )
    );
  }
}

