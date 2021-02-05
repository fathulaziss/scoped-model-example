import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoped_model_example/service_locator.dart';
import 'package:scoped_model_example/ui/views/splash_view.dart';

void main() {
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: SplashView(),
    );
  }
}
