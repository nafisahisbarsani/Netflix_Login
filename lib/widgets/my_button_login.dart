import 'package:flutter/material.dart';
import 'package:netflix_login/widgets/my_colors.dart';
class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const MyButton({super.key, 
    required this.text,
    required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
            border: Border.all(color: textColor),
      ),
      constraints: BoxConstraints(
        minHeight: 30
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}