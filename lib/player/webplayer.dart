import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


class WebPlayer extends StatefulWidget {
  const WebPlayer({super.key});

  @override
  State<WebPlayer> createState() => _WebPlayerState();
}

class _WebPlayerState extends State<WebPlayer> {
  late InAppWebViewController inAppWebViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
      children: [
        InAppWebView(
          initialUrlRequest: URLRequest(
            url:Uri.parse("https://drive.google.com/file/d/1dbdJGZmocSIeEMcdRtL3poLFAkOvbuW_/preview")
             ),
          onWebViewCreated: (InAppWebViewController controller){
            inAppWebViewController=controller;
          },
        )
      ],
     ),
    );
  }
}