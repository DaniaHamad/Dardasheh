import 'package:dardasheh/views/login_view.dart';
import 'package:dardasheh/views/signup_view.dart';
import 'package:get/get.dart';

class RoutesClass {
  static String login = "/login";
  static String signup="/signup";


  static String getLoginRoute() => login;
  static String getSignupRoute()=>signup;


  static List<GetPage> routes = [
    GetPage(name: login, page: () =>  LoginView()),
    GetPage(name: signup, page: ()=>SignupView()),

  ];
}
