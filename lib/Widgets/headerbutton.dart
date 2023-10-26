import 'package:flutter/material.dart';


Widget headerButton({
  required String buttonText,
  IconData? buttonIcon,
  void Function()? buttonAction,
  Color? buttonColor,
}) {
  return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText)
  );
}
