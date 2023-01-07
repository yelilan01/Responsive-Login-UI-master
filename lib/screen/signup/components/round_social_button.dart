import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_signin_ui/constants.dart';

class RoundSocialButton extends StatelessWidget {
  final String svgicon;
  final VoidCallback onPressed;
  const RoundSocialButton({
    Key? key,
    required this.svgicon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            svgicon,
            width: 20,
            height: 20,
            color: kPrimaryColor,
          ),
        ));
  }
}
