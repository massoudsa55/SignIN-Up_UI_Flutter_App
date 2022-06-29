import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_signup_ui_app/components/rounded_button.dart';
import 'package:login_signup_ui_app/screens/Login/components/already_have_an_acount_check.dart';
import 'package:login_signup_ui_app/screens/Login/components/rounded_input_text_field.dart';
import 'package:login_signup_ui_app/screens/Login/components/rounded_password_field.dart';
import 'package:login_signup_ui_app/screens/Login/login_screen.dart';

import 'background.dart';
import 'or_divider.dart';
import 'socal_icon.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.35,
              ),
              RoundedInputTextField(
                hintText: "Examble@gmail.com",
                onChanged: (value) {},
                icon: Icons.person,
              ),
              RoundedPasswordField(onChanged: (value) {}),
              RoundedButton(
                text: "Sign Up",
                press: () {},
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAcountCheck(
                login: false,
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ),
              ),
              const OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocalIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                    iconColor: const Color(0xFF4267B2),
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                    iconColor: const Color(0xFF1DA1F2),
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                    iconColor: const Color(0xFFEA4335),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
