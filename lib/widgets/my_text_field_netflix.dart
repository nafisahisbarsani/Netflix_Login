import 'package:flutter/material.dart';
import 'my_colors.dart';
class MyTextField extends StatelessWidget {
final String hintText;
final bool isObsecure;

  const MyTextField({super.key,
    required this.hintText,
    required this.isObsecure});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: textFieldColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color:textColor, fontSize: 18),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
        ),
        style: TextStyle(color: textColor),
        obscureText: isObsecure,
      ),
    );
  }
}
