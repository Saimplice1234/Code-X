import 'package:animate_do/animate_do.dart';
import 'package:code_x/ui/CustomInput.dart';
import 'package:code_x/ui/splash.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Color(0xff130F40),
      resizeToAvoidBottomInset:false,
      body:Container(
        margin: EdgeInsets.symmetric(horizontal:23),
        child:Column(
          children: [
            SizedBox(height:65,),
            Row(
              children: [
                Image.asset('assets/logo.jpg',width:32,height:32,),
              ],
            ),
            SizedBox(height:12,),
            Row(
              children: [
                Text("Sign In",style:GoogleFonts.poppins(color:Colors.white,fontSize:23,fontWeight:FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/bar.png',width:32,),
              ],
            ),
            SizedBox(height:20,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",style:GoogleFonts.poppins(color:Colors.white,fontSize:11),),
            SizedBox(height:37,),
            Container(
              child:Form(
                child:Column(
                  children: [
                    CustomInput(hintText:"Enter your mail",obscur:false,iconPath:"assets/mail.png",),
                    SizedBox(height:19,),
                    CustomInput(hintText:"Enter your password",obscur:true,isOnObscur:true,iconPath:"assets/lock.png"),
                    SizedBox(height:19,),
                    OutlineGradientButton(
                      inkWell:true,
                      child:Text("Login now !",style:GoogleFonts.poppins(color:Colors.white,fontSize:11,fontWeight:FontWeight.w500)),
                      gradient: LinearGradient(
                        colors: [Color(0xff6C5CE7), Color(0xff00E0FF)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      strokeWidth:1,
                      padding: EdgeInsets.symmetric(horizontal: 74, vertical: 16),
                      radius: Radius.circular(3),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:49,),
            RichText(
              text: TextSpan(
                  text: 'Not have an account ?',
                  style:GoogleFonts.poppins(color:Colors.white,fontSize:11,fontWeight:FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(text: ' SignUp !',
                        style:GoogleFonts.poppins(color:Color(0xff6C5CE7),fontSize:11,fontWeight:FontWeight.w500,decoration:TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // navigate to desired screen
                          }
                    )
                  ]
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
