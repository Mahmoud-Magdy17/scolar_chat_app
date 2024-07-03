import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scholar_chat_app/constants.dart';
import 'package:scholar_chat_app/widgets/custom_button.dart';
import 'package:scholar_chat_app/widgets/custom_text_field.dart';

import 'signup_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const id = "LoginPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              "assets/images/scholar.png",
              height: 90,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Scolar Chat",
                  style: TextStyle(
                    fontFamily: "Pacifico-Regular",
                    color: kSecondryColor,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Login",
              style: TextStyle(color: kSecondryColor, fontSize: 24),
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(hintText: "Email"),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(hintText: "Password"),
            const SizedBox(
              height: 16,
            ),
            const CustomButton(
              title: "Login",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?  ",
                  style: TextStyle(
                    color: kSecondryColor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpPage.id);
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: kSecondryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
