import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
class CustomInput extends StatefulWidget {
  String iconPath;
  String hintText;
  bool obscur;
  bool isOnObscur;
  CustomInput({this.hintText,this.obscur,this.isOnObscur,this.iconPath});
  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  OutlineInputBorder borderVfx(){
    return OutlineInputBorder(
      borderSide: BorderSide(
          color: Color(0xff6C5CE7),
          width:1),
    );
  }
  dynamic styleGoogleTxt(){
    return GoogleFonts.poppins(color:Colors.white,fontSize:11);
  }
  Widget suffixVfx(){
     if(widget.obscur == !false){
       if(widget.isOnObscur == true){
         setState(() {
           widget.isOnObscur=true;
         });
         return GestureDetector(
           onTap:(){
             setState(() {
               widget.isOnObscur=false;
             });
           },
             child: Icon(Icons.remove_red_eye_sharp,color:Colors.white,size:12,));
       }else if(widget.isOnObscur == false){
         setState(() {
           widget.isOnObscur=!widget.isOnObscur;
         });
         return GestureDetector(
             onTap:(){
               setState(() {
                 widget.isOnObscur=!widget.isOnObscur;
               });
             },
             child: Icon(Icons.home,color:Colors.white,size:12,));
       }
     }else if(widget.obscur == false){
      return Container(width:0,height:0);
     }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height:40,
      child: TextFormField(
        cursorColor:Colors.white,
        style:styleGoogleTxt(),
        obscureText:widget.obscur,
        decoration:InputDecoration(
          //suffixIcon:suffixVfx(),
          prefixIcon:Tab(
            icon: Container(
              child: Image(
                image: AssetImage(
                  widget.iconPath
                ),
                fit: BoxFit.cover,
              ),
              height: 20,
              width:20,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical:8,horizontal:12),
          fillColor:Color(0xff262254),
          filled:true,
          hintStyle:styleGoogleTxt(),
          border:borderVfx(),
          focusedBorder:borderVfx(),
          disabledBorder:borderVfx(),
          enabledBorder:borderVfx(),
          hintText:widget.hintText,
        ),
      ),
    );
  }
}


