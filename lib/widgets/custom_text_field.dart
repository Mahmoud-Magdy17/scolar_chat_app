import 'package:flutter/material.dart';
import 'package:scholar_chat_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kSecondryColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kSecondryColor,
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: kSecondryColor,
          )),
      style: const TextStyle(
        color: kSecondryColor,
      ),
    );
  }
}
