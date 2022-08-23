import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:hrms_app/screen/dashboard/dashboard_controller.dart';
import 'package:hrms_app/screen/dashboard/dashboard_screen.dart';
import 'package:hrms_app/screen/dashboard/pms_edit_screen/pms_edit_screen.dart';
import 'package:hrms_app/screen/dashboard/pms_edit_screen/pms_edit_screen_controller.dart';
import 'package:hrms_app/screen/home_screen/home_screen.dart';
import 'package:hrms_app/screen/home_screen/home_screen_controller.dart';
import 'package:hrms_app/screen/login_screen/login_screen.dart';
import 'package:hrms_app/screen/login_screen/login_screen_controller.dart';
import 'package:hrms_app/screen/pms_screens/pms_status/pms_status_controller.dart';
import 'package:hrms_app/screen/pms_screens/pms_status/pms_status_screen.dart';
import 'package:hrms_app/screen/profile_screen/profile_screen.dart';
import 'package:hrms_app/screen/welcome_screen/welcome_screen.dart';
import 'package:hrms_app/screen/welcome_screen/welcome_screen_controller.dart';
import 'package:hrms_app/utils/app_res.dart';
import 'screen/profile_screen/profile_screen_controller.dart';

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
        debugShowCheckedModeBanner: false,
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
          GetPage(
              name: AppRes.homeScreen,
              page: () => const HomeScreen(),
              binding: BindingsBuilder(() => HomeScreenController())),
          GetPage(
              name: AppRes.profileScreen,
              page: () => const ProfileScreen(),
              binding: BindingsBuilder(() => ProfileController())),
          GetPage(
              name: AppRes.dashBoardScreen,
              page: () => const DashBoardScreen(),),
          GetPage(
              name: AppRes.pmsEditScreen,
              page: () => const PmsEditScreen(),
              binding: BindingsBuilder(() => PmsEditScreenController())),
          GetPage(
              name: AppRes.pmsStatusScreen,
              page: () => const PmsStatusScreen(),
              binding: BindingsBuilder(() => PmsStatusController()))
        ],
        home: const WelcomeScreen());
  }
}
