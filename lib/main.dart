// ignore_for_file: prefer_const_constructors
import 'package:bottom_aplication/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      initialRoute: '/home',
      getPages: routes(),
    );
  }
}
