import 'package:facebook_clone/Widgets/avatar.dart';
import 'package:facebook_clone/assets.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar (displayImage:deepika,displayStatus: false),
        title: TextField(
    decoration: InputDecoration(
     hintText: "What's on your mind?",
    hintStyle: TextStyle (color: Colors.black),
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    ),
    )
    );
  }
}
