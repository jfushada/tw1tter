import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tw1tter/features/auth/views/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  static const String routeName = 'splash-view';

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      // Intentionally delay to show splash screen
      await Future<void>.delayed(const Duration(seconds: 1), () {});

      Navigator.pushReplacementNamed(context, LoginView.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: const Center(
          child: Text('Tw1tter'),
        ),
      ),
    );
  }
}
