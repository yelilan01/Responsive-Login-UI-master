import 'package:flutter/material.dart';
import 'package:login_signin_ui/components/text_field_container.dart';
import 'package:login_signin_ui/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: onChanged,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Password',
        icon: Icon(Icons.lock, color: kPrimaryColor),
        suffix: Icon(
          Icons.visibility,
          color: kPrimaryColor,
        ),
        border: InputBorder.none,
      ),
    ));
  }
}
