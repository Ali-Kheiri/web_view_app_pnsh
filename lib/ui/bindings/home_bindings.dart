import 'package:get/get.dart';
import 'package:web_app/ui/home/home_ctrl.dart';

class HomeScBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
