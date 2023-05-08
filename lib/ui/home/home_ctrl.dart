import 'package:get/get.dart';
import 'package:web_app/const.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreenController extends GetxController {
  var isLoading = false.obs;
  var loadingProgress = 0.obs;
  late final WebViewController webViewController;

  @override
  void onInit() {
    webViewController = WebViewController()
      ..canGoBack()
      ..canGoForward()
      ..getTitle()
      ..reload()
      ..setJavaScriptMode(
        JavaScriptMode.unrestricted,
      )
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // this will Update loading bar.
            loadingProgress.value = progress;
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(Uri.parse(urlAddress));
    super.onInit();
  }
}
