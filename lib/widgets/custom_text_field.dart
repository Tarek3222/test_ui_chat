import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.icon,
      this.suffixIcon,
      this.obscureText});
  final String hintText;
  final IconData icon;
  final Widget? suffixIcon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      obscureText: obscureText ?? false,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
