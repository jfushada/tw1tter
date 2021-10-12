import 'package:flutter/material.dart';
import 'package:tw1tter/core/theme/theme_button.dart';
import 'package:tw1tter/features/home/views/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  static const String routeName = 'login-view';

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 75.0,
                child: Icon(
                  Icons.flutter_dash_rounded,
                  size: 100.0,
                ),
              ),
            ),
            const SizedBox(height: 48.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    24.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    24.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              child: Text('Log In', style: TextStyle(color: Colors.white)),
              style: ThemeButton.elevatedButtonStyle,
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  HomeView.routeName,
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
