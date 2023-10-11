import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:toonanime/mainscreen/singleanime.dart';
import 'package:toonanime/player/webplayer.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
 
  late TabController tabController;
  double size=4;
  @override
  void initState() {
    tabController=TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        leading:
            IconButton(onPressed: (){}, icon:const Icon(Icons.menu,color: Colors.white,)),
        title: Text("ToonAnime",style:GoogleFonts.russoOne(color: Colors.white) ,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.person_rounded,color: Colors.white,)),
          )
        ],
            
         
      ),

      body:Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
               
               children: [
              
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("What are you\nlooking for",style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 24),textAlign: TextAlign.center,),
                      Text("Watch your favorte anime and cartoons\n in your native language",style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 12),textAlign: TextAlign.center,),
                      
                    ],),
                    const SizedBox(
                      height: 20,
                    ),
                    TabBar(tabs: const [
                      Tab(child: Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text("Top anime"),
                      ),),
                       Tab(child: Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                       child: Text("Top cartoon"),
                       ),),
                        Tab(child: Padding(
                          padding:EdgeInsets.symmetric(horizontal: 8),
                          child: Text("Action"),
                        ),),
                         Tab(child: Padding(
                           padding: EdgeInsets.symmetric(horizontal: 8),
                           child: Text("Romantic"),
                         ),)
                    ],
                    controller: tabController,
                    isScrollable: true,
                    onTap: (val){
                      if(val==1){
                        setState(() {
                          size=2;
                        });
                      }
                    },
                    indicator: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    labelColor: Colors.white,
                    dividerColor: Colors.black,
                  
                    
                    ),
                   const SizedBox(
                    height: 20,
                   ),
              
                   
                                    
                                   
                             SizedBox(
                              height:250 * size,
                                child: TabBarView(
                                  controller: tabController,
                                  children: [
                                     Wrap(
                                            spacing: 10,
                                            runSpacing: 10,
                                            alignment: WrapAlignment.center,
                                            runAlignment: WrapAlignment.start,
                                            //crossAxisAlignment: WrapCrossAlignment.start,
                                            children:[
                                                card("assets/narutoS.jpg", "Naruto shippuden", "500 ep",(){
                                                  //  Get.to(
                                                  //   const SingleAniView(
                                                  //   img: "assets/naruto-shippuden.jpg",
                                                  //   img1: "assets/narutoS.jpg",
                                                  //   title: "Naruto shippuden",
                                                  //   epi: "500",
                                                  //  ),
                                                  //  transition: Transition.rightToLeft
                                                  //  );
                                                  Get.to(
                                                    WebPlayer()
                                                  );
                                                },context),
                                           card("assets/onepice.jpg", "One pice", "1071 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                     img: "assets/one_piece.jpg",
                                                    img1: "assets/onepice.jpg",
                                                    title: "One piece",
                                                    epi: "1071",
                                                   ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                            card("assets/droganballz.jpg", "Drogan ballz", "1071 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                       img: "assets/drogan.jpe",
                                                    img1: "assets/droganballz.jpg",
                                                    title: "Drogan ballz",
                                                    epi: "1071",
                                                    ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                             card("assets/Bleachanime.png", "Bleach", "1071 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                       img: "assets/bleach.jpg",
                                                    img1: "assets/Bleachanime.png",
                                                    title: "Bleacch",
                                                    epi: "1071",
                                                    ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                              card("assets/titan.jpg", "Attack on the titan", "1071 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                        img: "assets/bleach.jpg",
                                                        img1: "assets/titan.jpg",
                                                        title: "Attack on the titan",
                                                        epi: "1071",
                                                    ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                               card("assets/demon.jpg", "Demon slayer", "1071 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                       img: "assets/Demon_Slayer.jpg",
                                                        img1: "assets/demon.jpg",
                                                        title: "Demon slayer",
                                                        epi: "1071",
                                                    ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                                card("assets/deathnote.jpg", "Death note", "1071 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                        img: "assets/death_note.jpg",
                                                        img1: "assets/deathnote.jpg",
                                                        title: "Death note",
                                                        epi: "1071",
                                                    ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                                 card("assets/jujutsu.jpg", "Jujutsu Kaisen", "1071 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                       img: "assets/jujutsu_.jpg",
                                                        img1: "assets/jujutsu.jpg",
                                                        title: "Jujutsu Kaisen",
                                                        epi: "1071",

                                                    ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                            ]
                                           ),
                                     
                                          Wrap(
                                            spacing: 10,
                                            runSpacing: 10,
                                            alignment: WrapAlignment.center,
                                            runAlignment: WrapAlignment.start,
                                            //crossAxisAlignment: WrapCrossAlignment.start,
                                            children:[
                                                card("assets/ben.jpg", "Ben10", "500 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                       img: "assets/ben10.jpg",
                                                        img1: "assets/ben.jpg",
                                                        title: "Ben10",
                                                        epi: "1071",
                                                    ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                                card("assets/jackie.jpg", "Jackie chan", "1071 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                       img: "assets/jackie_.jpg",
                                                        img1: "assets/jackie.jpg",
                                                        title: "Jackie chan",
                                                        epi: "1071",
                                                    ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                               card("assets/tom.jpg", "Tom and jerry", "1071 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                       img: "assets/tomjerry.jpg",
                                                        img1: "assets/tom.jpg",
                                                        title: "Tom and jerry",
                                                        epi: "1071",
                                                    ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                             card("assets/bheem.jpg", "Chhota bheem", "1071 ep",(){
                                                   Get.to(
                                                    const SingleAniView(
                                                       img: "assets/choota.jpg",
                                                        img1: "assets/bheem.jpg",
                                                        title: "Chhota bheem",
                                                        epi: "1071",
                                                    ),
                                                   transition: Transition.rightToLeft
                                                   );
                                                },context),
                                             
                                            ]
                                          ),
                                          
                                         Center(
                                          child: Text("nnn"),
                                         ),
                                          Center(
                                          child: Text("nnn"),
                                         )
                                  ]),
                              )
                 
              
              
               ],
          ),
        ),
      ),
    );
  }
}


Widget card(String img,String name,String ep,c(),context){
 return
    GestureDetector(
      onTap: (){
           c();
      },
      child: Container(
        
        width: MediaQuery.of(context).size.width/3,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color:const Color(0xFF413839)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(img,width: 140,height: MediaQuery.of(context).size.width/3.4,),
            Text(name,style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 13)),
             Text(ep,style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 11))
          ],
        ),
      
      ),
    );
}

