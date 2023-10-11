import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
// import 'package:get/get.dart';
// import 'package:toonanime/widget/function.dart';

class Episodes extends StatefulWidget {
  const Episodes({super.key});

  @override
  State<Episodes> createState() => _EpisodesState();
}

class _EpisodesState extends State<Episodes> {
  late VideoPlayerController controller;
  late ChewieController chewieController;
  // final controller=VideoPlayerController.networkUrl(Uri.parse("https://video4k.online/videoplayback/NEJhWmx2aXpNQXlQbTV5QitzMGdzWHR6TkgzZG9aWTMyR3NTaEJ5MDZ0QThseVIvVGpKWnBMMTNvRWt6SjdzekV5UmpPWi9lREhnWEs4ak9hR3hFNHc9PQ,,/original/Jackie%20Chan%20Adventures%201x1?token=WVRoN2JrdUtUNVlISkNZV2Y2MGliY3dWaGdJb05mZTdueVplSDJKRDRxekp4NFhuSWZocjgzQmUySjd6UzJHMGE4Q2FiaERzWDRGUDhPYmtXVDNOek16aVJ2OFRyZ05BZ2s5RXl3ZG5kSCtBeGdSMW5ybmJLN05BQ0pJS1lxWWk%2C"))..initialize().then((value) {
  //   setState(() {
    
  // });});
  
  

  @override
  void initState() {
    
    // TODO: implement initState
    controller=VideoPlayerController.networkUrl(
    Uri.parse("https://video4k.online/videoplayback/NEJhWmx2aXpNQXlQbTV5QitzMGdzWHR6TkgzZG9aWTMyR3NTaEJ5MDZ0QThseVIvVGpKWnBMMTNvRWt6SjdzekV5UmpPWi9lREhnWEs4ak9hR3hFNHc9PQ,,/original/Jackie%20Chan%20Adventures%201x1?token=WVRoN2JrdUtUNVlISkNZV2Y2MGliY3dWaGdJb05mZTdueVplSDJKRDRxekp4NFhuSWZocjgzQmUySjd6UzJHMGE4Q2FiaERzWDRGUDhPYmtXVDNOek16aVJ2OFRyZ05BZ2s5RXl3ZG5kSCtBeGdSMW5ybmJLN05BQ0pJS1lxWWk%2C"))..initialize().then((value) {
      setState(() {
        
      });
    });
     chewieController = ChewieController(
  videoPlayerController:controller,
  autoPlay: true,
  looping: false,
);
    super.initState();

  }
  
  @override
  void dispose() {
    // TODO: implement dispose
   controller.dispose();
   chewieController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      appBar:AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
        centerTitle: false,
      
        title: Text("ToonAnime",style:GoogleFonts.russoOne(color: Colors.white) ,),
       
            
         
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          AspectRatio(aspectRatio: chewieController.aspectRatio!,
          child:Chewie(controller: chewieController) ,
          ),
          
              // RotatedBox(quarterTurns: quarterTurns),
        //           Center(
        //   child: controller.value.isInitialized
        //       ? AspectRatio(
        //           aspectRatio: controller.value.aspectRatio,
        //           child: VideoPlayer(controller),
        //         )
        //       : Container(),
        // ),
        ],
      ),
      //  floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       setState(() {
      //         controller.value.isPlaying
      //             ? controller.pause()
      //             : controller.play();
      //       });
      //     },
      //     child: Icon(
      //       controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //     ),
      //   ),
    );
  }
}