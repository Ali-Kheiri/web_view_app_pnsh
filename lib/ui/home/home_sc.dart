import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/ui/home/home_ctrl.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: LinearProgressIndicator(
            value: controller.loadingProgress.value.toDouble(),
          ),
        ),
        body: RotatedBox(
          quarterTurns: 2,
          child: WebViewWidget(
            controller: controller.webViewController,
          ),
        ),
      ),
    );
  }
}
