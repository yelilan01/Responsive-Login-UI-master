import 'package:flutter/material.dart';
import 'package:login_signin_ui/screen/login/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const Scaffold(
      body: Body(),
    );
  }
}
