import 'package:flutter/material.dart';
import 'my_colors.dart';
class MyCheckBox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String text;

  const MyCheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          checkColor: textColor,
          activeColor: buttonColor,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: secondTextColor, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
