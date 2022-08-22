import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:hrms_app/screen/login_screen/login_screen.dart';
import 'package:hrms_app/screen/login_screen/login_screen_controller.dart';
import 'package:hrms_app/screen/welcome_screen/welcome_screen.dart';
import 'package:hrms_app/screen/welcome_screen/welcome_screen_controller.dart';
import 'package:hrms_app/utils/app_res.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        getPages: [
          GetPage(
              name: AppRes.welcomeScreen,
              page: () => const WelcomeScreen(),
              binding: BindingsBuilder(() => WelcomeScreenController())),
          GetPage(
              name: AppRes.loginScreen,
              page: () => const LoginScreen(),

              binding: BindingsBuilder(() => LoginScreenController())),
        ],
        home: const WelcomeScreen());
  }
}
