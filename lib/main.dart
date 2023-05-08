import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/ui/routes/routes.dart';

import 'const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: applicationName,
      getPages: Routes.applicationPages,
      initialRoute: Routes.homeRouteName,
      locale: const Locale('fa', 'IR'),
    );
  }
}
