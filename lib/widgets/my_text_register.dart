import 'package:flutter/material.dart';
import 'my_colors.dart';

class MyRegisterText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const MyRegisterText({
    Key? key,
    required this.text,
    this.color = textColor, // Default color
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}

class MyTextRich extends StatelessWidget {
  final List<TextSpan> children;
  final TextAlign textAlign;

  const MyTextRich({
    Key? key,
    required this.children,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(children: children),
    );
  }
}
