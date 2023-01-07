import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signin_ui/components/rounded_button.dart';
import 'package:login_signin_ui/screen/components/background.dart';
import 'package:login_signin_ui/constants.dart';
import 'package:login_signin_ui/screen/login/login_screen.dart';
import 'package:login_signin_ui/screen/signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Clean Maid',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: kPrimaryColor,
                fontSize: 40,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/cleaning.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              text: 'LOGIN',
            ),
            RoundedButton(
              text: 'REGISTER',
              color: kPrimaryLightColor,
              textcolor: Colors.black,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignupScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
