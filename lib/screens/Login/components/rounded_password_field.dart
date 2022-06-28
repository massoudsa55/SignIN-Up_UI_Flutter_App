import 'package:flutter/material.dart';
import 'package:login_signup_ui_app/constants.dart';

import 'rounded_input_text_field.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: cPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: cPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
