import 'package:get/get.dart';
import 'package:gv_key_project/app/pages/auth/Login.dart';
import 'package:gv_key_project/app/pages/auth/Register.dart';
import 'package:gv_key_project/app/pages/auth/ResetPassword.dart';
import 'package:gv_key_project/app/pages/bottomNavigation.dart';
import 'package:gv_key_project/app/pages/splashScreen/splashScreen.dart';

final pageRoute = [
  GetPage(
      name: '/',
      page: () => SplashScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500)),
  GetPage(
      name: '/auth/login',
      page: () => LoginPage(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500)),
  GetPage(
      name: '/auth/register',
      page: () => RegisterPage(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500)),
  GetPage(
      name: '/auth/reset-password',
      page: () => ResetPasswordPage(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500)),
  GetPage(
      name: '/menus/navbar',
      page: () => BottomNavbar(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500))
];
