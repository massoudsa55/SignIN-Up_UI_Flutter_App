import 'package:flutter/material.dart';
import 'package:login_signup_ui_app/constants.dart';

class AlreadyHaveAnAcountCheck extends StatelessWidget {
  const AlreadyHaveAnAcountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  final bool login;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Acount ? " : "Already have an Acount ? ",
          style: const TextStyle(color: cPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              color: cPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
