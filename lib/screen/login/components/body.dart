import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signin_ui/components/already_have_an_account_acheck.dart';
import 'package:login_signin_ui/components/rounded_button.dart';
import 'package:login_signin_ui/components/rounded_input_field.dart';
import 'package:login_signin_ui/components/rounded_password_field.dart';
import 'package:login_signin_ui/constants.dart';
import 'package:login_signin_ui/screen/login/components/background.dart';
import 'package:login_signin_ui/screen/signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: kPrimaryColor,
                fontSize: 40,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (String value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
