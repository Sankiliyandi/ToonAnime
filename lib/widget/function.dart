import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:get/get.dart';
Widget card(String img,String name,String ep,c()){
 return
    GestureDetector(
      onTap: (){
           c();
      },
      child: Container(
        //MediaQuery.of(context).size.width*,
        //height: 200,
        width: 150,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color:const Color(0xFF413839)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(img,width: 140,height: 190,),
            Text(name,style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 13)),
             Text(ep,style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 11))
          ],
        ),
      
      ),
    );
}

