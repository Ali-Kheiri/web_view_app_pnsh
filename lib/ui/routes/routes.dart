import 'package:get/get.dart';
import 'package:web_app/ui/bindings/home_bindings.dart';
import 'package:web_app/ui/home/home_sc.dart';

class Routes {
  static List<GetPage> applicationPages = [
    GetPage(
      name: homeRouteName,
      page: () => const HomeScreen(),
      binding: HomeScBindings(),
    )
  ];

  static String  homeRouteName = '/home';
}
