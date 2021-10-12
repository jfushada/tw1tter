import 'package:flutter/material.dart';
import 'package:tw1tter/router.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tw1tter',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: AppRouter.initialRoute,
      debugShowCheckedModeBanner: false,
      routes: AppRouter.routeList,
    );
  }
}
