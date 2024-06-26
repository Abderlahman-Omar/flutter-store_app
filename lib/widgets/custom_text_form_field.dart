import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.hintText,
      this.hintColor,
      this.labelText,
      this.onChanged,
      this.textInputType,
      this.obscureText = false});
  final String? hintText;
  final String? labelText;
  final Color? hintColor;
  final Function(String)? onChanged;
  final bool? obscureText;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      keyboardType: textInputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
            // color: hintColor,
            ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintColor,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
              // color: Colors.white,

              ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
              // color: Colors.white,
              ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
              // color: Colors.white,
              ),
        ),
      ),
    );
  }
}
