import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tw1tter/features/auth/views/login_view.dart';
import 'package:tw1tter/features/home/views/home_view.dart';
import 'package:tw1tter/features/splash/views/splash_view.dart';

class AppRouter {
  AppRouter._();

  static const String initialRoute = SplashView.routeName;

  static Map<String, WidgetBuilder> routeList = <String, WidgetBuilder>{
    HomeView.routeName: (BuildContext context) => const HomeView(),
    LoginView.routeName: (BuildContext context) => const LoginView(),
    SplashView.routeName: (BuildContext context) => const SplashView(),
  };
}
