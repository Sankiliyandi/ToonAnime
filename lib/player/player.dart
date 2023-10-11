import 'package:flutter/material.dart';
//import 'package:flick_video_player/flick_video_player.dart';
import 'dart:convert' as convert;
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class Player extends StatefulWidget {
  final String cartoon;
  final String season;
  final int epi;
  const Player({super.key,
     required this.cartoon,
     required this.season,
     required this.epi
  
  });

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {

 
// String epi=widget.epi;
//  Future<void> play(String epo) async{
    // flickManager = FlickManager(
    //   videoPlayerController:
    //       VideoPlayerController.networkUrl(Uri.https(
            
    //         ('video4k.online'),
    //         ('/videoplayback/NEJhWmx2aXpNQXlQbTV5QitzMGdzWHR6TkgzZG9aWTMyR3NTaEJ5MDZ0QThseVIvVGpKWnBMMTNvRWt6SjdzekV5UmpPWi9lREhnWEs4ak9hR3hFNHc9PQ,,/original/Jackie Chan Adventures 1x'+epo),
    //         {
    //           'token':'WVRoN2JrdUtUNVlISkNZV2Y2MGliY3dWaGdJb05mZTdueVplSDJKRDRxekp4NFhuSWZocjgzQmUySjd6UzJHMGE4Q2FiaERzWDRGUDhPYmtXVDNOek16aVJ2OFRyZ05BZ2s5RXl3ZG5kSCtBeGdSMW5ybmJLN05BQ0pJS1lxWWk,'
    //         }
    //         ),
           
    //         ),
    // );
//  }
// final  videocontroller= VideoPlayerController.networkUrl(Uri.https(
            
//             ('video4k.online'),
//             ('/videoplayback/NEJhWmx2aXpNQXlQbTV5QitzMGdzWHR6TkgzZG9aWTMyR3NTaEJ5MDZ0QThseVIvVGpKWnBMMTNvRWt6SjdzekV5UmpPWi9lREhnWEs4ak9hR3hFNHc9PQ,,/original/Jackie Chan Adventures 1x1'),
//             {
//               'token':'WVRoN2JrdUtUNVlISkNZV2Y2MGliY3dWaGdJb05mZTdueVplSDJKRDRxekp4NFhuSWZocjgzQmUySjd6UzJHMGE4Q2FiaERzWDRGUDhPYmtXVDNOek16aVJ2OFRyZ05BZ2s5RXl3ZG5kSCtBeGdSMW5ybmJLN05BQ0pJS1lxWWk,'
//             }
//             ));
// void play(String ep){
//   final  videocontroller= VideoPlayerController.networkUrl(Uri.https(
            
//             ('video4k.online'),
//             ('/videoplayback/NEJhWmx2aXpNQXlQbTV5QitzMGdzWHR6TkgzZG9aWTMyR3NTaEJ5MDZ0QThseVIvVGpKWnBMMTNvRWt6SjdzekV5UmpPWi9lREhnWEs4ak9hR3hFNHc9PQ,,/original/Jackie Chan Adventures 1x'+ep),
//             {
//               'token':'WVRoN2JrdUtUNVlISkNZV2Y2MGliY3dWaGdJb05mZTdueVplSDJKRDRxekp4NFhuSWZocjgzQmUySjd6UzJHMGE4Q2FiaERzWDRGUDhPYmtXVDNOek16aVJ2OFRyZ05BZ2s5RXl3ZG5kSCtBeGdSMW5ybmJLN05BQ0pJS1lxWWk,'
//             }
//             ));
//             videocontroller.initialize();
// }
// final chewie=ChewieController(videoPlayerController: videocontroller);

 
   // play(epi);
  late VideoPlayerController controller;
  late ChewieController chewieController;
   //Future<void>? _initializeVideoPlayerFuture;
  //int? _playBackTime;
  //Duration? newCurrentPosition;
  
  Map <String,dynamic> cartoondetails={
    "Jackie chan":{
      "seasons":5,
      "season1":[
        "https://video4k.online/embed/byg0wlpmy-5o-d6"
         "https://rr1---sn-h5576ns6.c.drive.google.com/videoplayback?expire=1696271643&ei=6-IaZbzCM-Oh-LYP65Sw-Ao&ip=2409:408d:3e1d:1cfa:f1d6:b36f:8e83:481f&id=0d6a43f1efde8de8&itag=18&source=webdrive&requiressl=yes&xpc=EghotM6WJ3oBAQ==&mh=4v&mm=32&mn=sn-h5576ns6&ms=su&mv=m&mvi=1&pl=41&ttl=transient&susc=dr&driveid=1dbdJGZmocSIeEMcdRtL3poLFAkOvbuW_&app=explorer&eaua=3mympojr-Ug&mime=video/mp4&vprv=1&prv=1&dur=1167.615&lmt=1563118872679266&mt=1696260575&subapp=DRIVE_WEB_FILE_VIEWER&sparams=expire,ei,ip,id,itag,source,requiressl,xpc,ttl,susc,driveid,app,eaua,mime,vprv,prv,dur,lmt&sig=AOq0QJ8wRQIhALUEP6Wa055Xi0-4pOaMwpl6vUOlDH3Hli-EdjwKnTqYAiBCzUFNvMUN_yCZHws2rRzOiAswAqVv7ZsNOVBUX50n3Q==&lsparams=mh,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIgFDSznI1t3YkiyXAbajWua3Mcu9C2b_pz2xJ6yKbnPI0CIQCbyoBFa8hXQNJ48av0UCYEEAiylyIILcK1I_Bv6Tod-w==&cpn=NaXUOF_L_L_JnKAx&c=WEB_EMBEDDED_PLAYER&cver=1.20230926.01.00",
        "https://video4k.online/videoplayback/bWYwZHgxZXpLb3RoV0VQRlBLa0Vqc1U2bklPSUZEMUhJWW9nSm9pTktpc1ppb1FvQUp6T3dwcW41TmxEc2UySDNYN2tkY0dxcG5vc0FSL3ErNDBTSHc9PQ,,/original/Jackie%20Chan%20Adventures%201x1.mp4?dl=0&token=TXZRSjl1ZFk1T2JCZE5GREhJMU5wKzMxZzU2SzV1aWlXWlhpdjVwSmIxV3RXUE54Nk9NUVZXcWkrV3JJZXJlSEh0Ly9LU1lXT0tMV2FOZXdVZXZpbVJjNzJJSkI4QkF2M3BuRkJta3plMzhDT1RCMDh1MDVOeW9ETnJZTktXZzk,",
        "https://video4k.online/videoplayback/NEJhWmx2aXpNQXlQbTV5QitzMGdzWHR6TkgzZG9aWTMyR3NTaEJ5MDZ0QThseVIvVGpKWnBMMTNvRWt6SjdzekV5UmpPWi9lREhnWEs4ak9hR3hFNHc9PQ,,/original/Jackie%20Chan%20Adventures%201x1?token=WVRoN2JrdUtUNVlISkNZV2Y2MGliY3dWaGdJb05mZTdueVplSDJKRDRxekp4NFhuSWZocjgzQmUySjd6UzJHMGE4Q2FiaERzWDRGUDhPYmtXVDNOek16aVJ2OFRyZ05BZ2s5RXl3ZG5kSCtBeGdSMW5ybmJLN05BQ0pJS1lxWWk%2C",
        "https://video4k.online/videoplayback/Q2k5U09JbE5iM1hIMlRBbzAxTllIckNiTVlxdjkwUUE5T0VqU2lKcFhSZExXMURHbmJ1VE1NcHlDMkJXajdCSmNaWkJJczRvVnpkVmdiNlFRdWdDd1E9PQ,,/original/Jackie%20Chan%20Adventures%201x2?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/QjFSZzljZEg0ZG8wdTd5Tk83ZGx5eGJLSmFQSkFReVlYQUtUTUk3Y1k0OVpoRWNoT25Nbmhkb3dsbXYzRUloVm9BUHFBdEpqdUxvWVNqWkV1Zjc1OWc9PQ,,/original/Jackie%20Chan%20Adventures%201x4?token=MjJxKzBOM1FtN0VNbzM4cTZQeTU0QkVHM3BWL2RWZERiUFEvRXdWMUZ5QjI3TG8ycVMybXFjV3pNOW1IT1JHcE0xM0o3TCtaa2FMMklKOEt4MWtoV280VWtxdTRaUTJieVRmUzBkdEZ6OFBRMEQzN25ZSmtaNFVGZXgyS21ZTHg,",
        "https://video4k.online/videoplayback/QjFSZzljZEg0ZG8wdTd5Tk83ZGx5eGJLSmFQSkFReVlYQUtUTUk3Y1k0OVpoRWNoT25Nbmhkb3dsbXYzRUloVm9BUHFBdEpqdUxvWVNqWkV1Zjc1OWc9PQ,,/original/Jackie%20Chan%20Adventures%201x4?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/d2wvSmM2eW9iZEFvc2NRM0orSUpmZzJ1QUFDL0VPUDdnbC9GOGpwNndRc3Y4NmUreE0wbkZreitOTVVOcmkwanYvNFVQVE5mclAvRlJiekx5aCs2NEE9PQ,,/original/Jackie%20Chan%20Adventures%201x5?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/bDVkYkEwalBTSXBTdTdYZnE3L0d1cUVCc2ZOWjc3OHdKdHhYUGxPaE4zKyszbTNnZTlzUUdsSXdyMG5nY1U4azVYU0l3UUZXR1BBcDcrbncrLzFkWVE9PQ,,/original/Jackie%20Chan%20Adventures%201x6?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/Sk9oL2I4RlN6dHJVK2NyWE1mMGdUVS9MQ0tYS1MySHd6K0hUYUh5NWxLL1AxTXFKTW5lUjgxWlRsMkJDODBNV1Z5cm80bEd4MnJKZE9uMGhKS0hKZ2c9PQ,,/original/Jackie%20Chan%20Adventures%201x7?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/aXd6TkJybnRaOVhrNGZrT3pObithajJYZm5ZbytZSXV2cHVJR2NqL2Z4L3BmMTU1RXF4ZUlNLy8yOGhZaHZWZWpKd1BlMG1LRU5BNUhoOUgvcTFWY0E9PQ,,/original/Jackie%20Chan%20Adventures%201x8?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/R05Udm56T0RMQUE4TDQyTnUvaC83QWNGdlhjbDkxcHd4WmlHMTF4REFvdEh6S1pNVVdvdmRUeTVxU2tiWkQyVUxvaVA2SDNRYVNPcmtQU0xsM1pOK3c9PQ,,/original/Jackie%20Chan%20Adventures%201x9?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/QTVkU21wVlQ5Sk1sMDZxYU5zdlh0anNORGdDdHAzNjc4YnRNWlVwY3hOdUtkb215U050OTlnb1NwRFVPM29DUFVvUVd1UjhSWkxJSWZxLzhweVMyUVE9PQ,,/original/Jackie%20Chan%20Adventures%201x10?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/Y2NRTVFoMlJ2WmtJWmlsUHdVMUhlM2VVbnF1ZEM2K3lPWkNsQ0pQR2tYdU44TG1aQ25FK245b000dHlhdzB1YkkyUUl0ZldOb0JmaW1hdVYvK3hyQmc9PQ,,/original/Jackie%20Chan%20Adventures%201x11?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/c25aU2R0VFJmNE9NaG8zbDZJN05FWEtFMHJYbVd1dGdnU0VGTEp1VXZlblBNaWovaUxoeVFFM001QnNzYmZ3REE2am5qU2NncnJ2OUY3Zm9iaXpGdXc9PQ,,/original/Jackie%20Chan%20Adventures%201x12?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/cFJ4Q2NHdmowSVlwayt6VWNkOVlXem42S1AxZ0JhSy9Wc0VjRmlnWFA5SXMvdzJlWk90UGFVWGdIK1p3QVFGZnhFRm9PMkovblhMQkszaCtBaFRWQ0E9PQ,,/original/Jackie%20Chan%20Adventures%201x13?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,"
      ]
    },
    "Ben10":{
      "seasons":4,
      "season1":[
        "https://video4k.online/videoplayback/dTdJYzNqcDIrQnJjNWxQdldjU0l1UnVGeTRkaWRmT2JEQkVqeWNsclhTckhNVm5xVEozWFQ1ZHlQSUhJNTY4MlJmb21LMG0rMlFqb29WY1RjcjU3WXc9PQ,,/original/Ben%2010%202x1?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/aWFLK3JkdG5lbExuRVJ0WkJncFNWSVBZcEpNMVJlLzY0UEJaZ2FhOVQ0UGNBQlFUdGE0WUIrK2RFYk1DZWRsL3Z1b1lseWxFNUJUb25JOHRxRDdoZ0E9PQ,,/original/Ben%2010%202x2?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/L1p5WUU1Q2Vyc0RBSmR3aUdxRTR6NUNWd1grWGZXbHh5VG53NVdTNU05cGNIekNVMUJhamNnTFRnOHpVNmpZY2E3dlgrT3pGeTNGUWsvTkwrdmpvdEE9PQ,,/original/Ben%2010%202x3?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/YUpDOVNzSUovdjFvc0hJVHU4MVI5UUFMZjlJOWhFZEtTWFMzeGN1bDdwZnBZeDVWRFA1VVhwQjFXN0c2bXR3WUxDQi9JaDlHb1N5Z0dZalFWdEpEUFE9PQ,,/original/Ben%2010%202x4?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/b2d6bHQvYUt3c0VZV3NXcGdtaDFsSEplUWRNYU1LVWpLZlNDcStqcDRVZ2M5T0V4SGVVUG5ZdXJqa01CSHZiWlBWa3JuQldPZnNDTVFMdGI5UWFXQkE9PQ,,/original/Ben%2010%202x5?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/QU5MSWNSWGlHcWhXUTNTUzBJVTErRGdBc0pTQnp2Y25wV2FmcE8rOGV0aUJCQllBTGhHWTZjYWxIc0R5QVlDN2p0dWpnWDkzT0V1NW0wNEkraXpjS0E9PQ,,/original/Ben%2010%202x6?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/bEJ3QzdLL1c1K2lOQW1ZZ01CMUVmT0V2RllnWTZaaWtjTmZabkRZZFVaSEFXR1JMcSthNkExZHF2ZURhYTVsc3JqaExRUGNhbnBma3FkU0N4UmVwakE9PQ,,/original/Ben%2010%202x7?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/Rm5ieW1xNUxRenM1dGtGSHhVUHMzY1Q0Uk91N0N3QThoV0RBa291RkEzN2Z1VTJyNU44bnI0bklEaTNyeWI4SHJFb3dlclpLNDU2dE80eW9lWEVkTVE9PQ,,/original/Ben%2010%202x8?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/cm01VU1IWmRFOVZOeWN5d0FNSGlCZGJnMUZKMlBvcjdTZVNOTnNxVjFMd29LUndJZThtTXp0Z0ordFlhMTlIZGIxMVRtekxQRS9VU1hxczg5QVp5R0E9PQ,,/original/Ben%2010%202x9?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/TTNqK1djUlhNc2F0ZlVlOEhaZTg3NCs4aUEvYk1sZHJtd0xzWFl4aTRDdUUxMDZ5azRzTk5DQ2gxMzRGSGQ5U21tdFJTeWZiUkRMck8zeU5uaVhWb3c9PQ,,/original/Ben%2010%202x10?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/N2hpRWtqcFNaaDZlWFhJS3ZaemxFcDRmMkRXY2pUaG41dXpFRExXeHBRMWY0UlFGd1FaZUwyaWhvTTBVN280UWh3bDdSbzlrRjByUlZydkF2T3U0d1E9PQ,,/original/Ben%2010%202x11?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/bWRuT2JQYmNCZUg3aHBwUDZQOXJ1NEpqc3Ntd1ZzY0tOdGdpVHBMdmk2dG9jTDBTOWJDRUFLS3JhUGxzQkNKNk5zUGpyNDhxbHBXY0hNclhwRXhHWHc9PQ,,/original/Ben%2010%202x12?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,",
        "https://video4k.online/videoplayback/RGVvSTg0VGRzQ1VRdzlhSm9Mb3JNUHZ3M042RU9vM3JoYjI2RDNGNG0yMVdEWnNPbjBuZFpjQzlSY2ZHRWF6OXF0Y0lDZzJBZXVFdmpoZ0RvcmJMaHc9PQ,,/original/Ben%2010%202x13?token=R1JuM2pQRW1BUnZ3NXJESmdpS2tTOTBKb1J3TGI1TXQ1aWdoSHdoUnhtRlVGMmw2Q2xFb0VyMXprN1ZzbmJiTUZMQWZadjRsT09WR0pUemRNWnFQY1IraEVOUXZlWTU4eFkvVXNoRHE3eWZVNVBhVFF0aXNXVENFTHEyeHYrZm0,"
      ]
    }
  };
  Future getdata() async{
      var url=Uri.https('video4k.online','embed/byg0wlpmy-5o-d6');
    var response = await http.get(url);
  if (response.statusCode == 200) {
    // var jsonResponse =
    //     convert.jsonDecode(response.body) as Map<String, dynamic>;
   print(response.body);
   // print(jsonResponse);
  } else {
    print('Request failed .');
  }
  }
  @override
  void initState() {
    //urls[widget.epi-1]
    // TODO: implement initState
    getdata();
//     controller=VideoPlayerController.networkUrl(
//     Uri.parse(cartoondetails[widget.cartoon]["season1"][widget.epi-1]))..initialize().then((value) {
//       setState(() {
//         controller.play();
//       });
//       // controller.addListener(() {
//       //   setState(() {
//       //     _playBackTime=controller.value.position.inSeconds;
//       //   });
//       // });
//     });
//     // chewieController.addListener(() {
//     //    setState(() {
//     //       _playBackTime=controller.value.position.inSeconds;
//     //     });
//     // });
//    // _initializeVideoPlayerFuture=controller.initialize();
//      chewieController = ChewieController(
//   videoPlayerController:controller,
//   autoPlay: true,
//   looping: false,
// );
    super.initState();

  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    //_initializeVideoPlayerFuture=null;
    // controller.pause().then((value) {
    //   controller.dispose();
    //   chewieController.dispose();
    // });
    // chewieController.pause().then((value)  {
    //    controller.dispose();
    //   chewieController.dispose();
    // });
  //  controller.dispose();
  //  chewieController.dispose();
   
    super.dispose();
  }
//    Future<bool> _clearPrevious() async {
//     await controller.pause();
//     await chewieController.pause();
//     return true;
//   }
// Future<void> _initializePlay(String videoPath) async {
//     controller = VideoPlayerController.networkUrl(Uri.parse(videoPath));
//     controller.addListener(() {
//       setState(() {
//         _playBackTime = controller.value.position.inSeconds;
//       });
//     });
//     _initializeVideoPlayerFuture = controller.initialize().then((_) {
//       controller.seekTo(newCurrentPosition!);
//       controller.play();
//       chewieController.seekTo(newCurrentPosition!);
//       chewieController.play();
//     });
//   }
//   void _getValuesAndPlay(String videoPath) {
//     newCurrentPosition = controller.value.position;
//     startPlay(videoPath);
//     print(newCurrentPosition.toString());
//   }
//    Future<void> startPlay(String videoPath) async {
//     setState(() {
//       _initializeVideoPlayerFuture = null;
//     });
//     Future.delayed(const Duration(milliseconds: 200), () {
//       _clearPrevious().then((_) {
//         _initializePlay(videoPath);
//       });
//     });
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar :AppBar(
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
      backgroundColor: Colors.black,
      body:ListView(
        children:[
          //  AspectRatio(aspectRatio: 16/9,
          // child:Chewie(controller: chewieController) ,
          // ),
      Padding(
       padding:const EdgeInsets.all(20),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children:[
                
                Center(child: Text("Your are watching episode "+widget.epi.toString(),style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 13))),
                 const SizedBox(
                  height: 15,
                 ),
                //  TextButton(
                //   onPressed:(){
                //   //  Get.bottomSheet(
                //   //   BottomSheet(onClosing: onClosing, builder: builder)
                //   //  )
                //   } , child:Text("Episodes",style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 13)),),
                   Theme(
                     data: Theme.of(context).copyWith(
                       dividerColor: Colors.transparent,
                       splashColor:Colors.black//const Color(0xFF426BB6),
                      
                       ),
                    child: ExpansionTile(
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    expandedAlignment: Alignment.topLeft,
                      collapsedTextColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      childrenPadding: const EdgeInsets.only(left: 30),
                      iconColor: Colors.white,
                      title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        
                       // Image.asset("assets/coin.png"),
                        const SizedBox(
                          width: 10,
                        ),
                          Text("season",
                          style: GoogleFonts.robotoSerif(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),),
                      ],
                    ),
                    
                    children: [
                      for(int i=1;i<=cartoondetails[widget.cartoon]["seasons"];i++)
                              Column(
                              
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                     Text("season "+i.toString(),
                              style:GoogleFonts.robotoSerif(
                                color: Colors.white,
                                fontSize: 12),),
                             
                           const   SizedBox(
                               height: 15,
                             ),
                          //      Text("season 2",
                          //     style:GoogleFonts.robotoSerif(
                          //       color: Colors.white,
                          //       fontSize: 12),),
                             
                          //  const   SizedBox(
                          //      height: 15,
                          //    ),
                          //      Text("season 3",
                          //     style:GoogleFonts.robotoSerif(
                          //       color: Colors.white,
                          //       fontSize: 12),),
                             
                          //   const  SizedBox(
                          //      height: 15,
                          //    ),
                                ],
                              )         
                                 
                              
                              
                    ],
                       ),
                  ),
                 
                 const SizedBox(
                  height: 15,
                 ),
                 Center(
                   child: Wrap(
                     spacing: 10,
                     runSpacing: 10,
                     children:[
                      for(int i=1;i<=13;i++)
                      GestureDetector(
                        onTap: (){
                         //String e=i.toString();
                       //  _getValuesAndPlay("https://video4k.online/videoplayback/NEJhWmx2aXpNQXlQbTV5QitzMGdzWHR6TkgzZG9aWTMyR3NTaEJ5MDZ0QThseVIvVGpKWnBMMTNvRWt6SjdzekV5UmpPWi9lREhnWEs4ak9hR3hFNHc9PQ,,/original/Jackie%20Chan%20Adventures%201x"+e+"?token=WVRoN2JrdUtUNVlISkNZV2Y2MGliY3dWaGdJb05mZTdueVplSDJKRDRxekp4NFhuSWZocjgzQmUySjd6UzJHMGE4Q2FiaERzWDRGUDhPYmtXVDNOek16aVJ2OFRyZ05BZ2s5RXl3ZG5kSCtBeGdSMW5ybmJLN05BQ0pJS1lxWWk%2C");
                          Get.back();
                          Get.off( Player(
                            season: "1",
                            cartoon: "Jackie chan",
                            epi: i,
                          ));
                          print(i);
                          setState(() {
                          // play(i.toString());
                          });
                         
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                           color:const Color(0xFF413839),
                           child:  Text(i.toString(),style: GoogleFonts.robotoSerif(color: Colors.white,fontSize: 11)),
                        ),
                      )
                     ]
                   ),
                 )
          ]
        ),
      )
        ]
      )
    );
  }
}