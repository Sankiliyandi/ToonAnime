import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
//import 'package:toonanime/mainscreen/episodeslist.dart';
import 'package:toonanime/player/player.dart';

class SingleAniView extends StatefulWidget {
 final String img;
 final String img1;
 final String title;
 final String epi;
  const SingleAniView({
    super.key,
    required this.img,
    required this.img1,
    required this.title,
    required this.epi,
    });

  @override
  State<SingleAniView> createState() => _SingleAniViewState();
}

class _SingleAniViewState extends State<SingleAniView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
             alignment: Alignment.bottomLeft,
             padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              image:DecorationImage(image:AssetImage(widget.img),fit: BoxFit.cover),
              
            ),
           
          ),
          Padding(padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                        Text(widget.title,style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 13)),
                  Text("Naaa naaa na nanana na",style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 11)),
                 const SizedBox(
                  height: 15,
                 ),
                  Row(
                    children: [
                      Container(
                        width: 115,
                        height: 40,
                       
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey
                        ),
                        child:  MaterialButton(onPressed: (){
                            Get.to(
                              Player(
                                 season: "1",
                                 epi: 1,
                                 cartoon: widget.title,
                              ),
                              transition: Transition.rightToLeft
                            );
                         // Get.to(Episodes());
                        },
                      child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                      const  Icon(Icons.play_circle),
                           Text("Watch",style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 10))
                          ],
                        ),
                      ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                     Container(
                        // padding: const EdgeInsets.symmetric(
                        //   vertical: 5,
                        //   horizontal: 5
                        // ),
                        width: 115,
                        height: 40,
                       
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey
                        ),
                        child:  MaterialButton(onPressed: (){},
                      child:
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                      const  Icon(Icons.add_circle),
                           Text("Add to list",style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 10))
                          ],
                        ),
                      ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Episodes",style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 13)),
                      Text("View all",style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 13)),
                    ],
                  ),
                   const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                     children: [
                      for(int i=1;i<5;i++)
                      card(widget.img1, "Season 1", i.toString()),
                     
                     ], 
                    ),
                  )
              ],
            ),
          ),
          )
           
        ],
      )
    );
  }
}

Widget card(String img,String season,String ep){
 return
    Container(
      //MediaQuery.of(context).size.width*,
      //height: 200,
      margin: const EdgeInsets.only(right: 10),
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
          Text(season,style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 13)),
           Text("Episode:"+ep,style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 11))
        ],
      ),
  
  );
}
