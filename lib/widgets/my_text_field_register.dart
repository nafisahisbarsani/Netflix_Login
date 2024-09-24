import 'package:flutter/material.dart';
import 'my_colors.dart';
class MyRegisterTextField extends StatelessWidget {
  final String hintText;
  final bool isObscure;

  const MyRegisterTextField({
    Key? key,
    required this.hintText,
    this.isObscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: textFieldColor),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: textFieldColor),
            borderRadius: BorderRadius.circular(7),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: textFieldColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: textFieldColor),
          ),
        ),
      ),
    );
  }
}
