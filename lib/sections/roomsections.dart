import 'package:facebook_clone/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/Widgets/avatar.dart';
class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar (displayImage:deepika, displayStatus: true),
          Avatar(displayImage: ranveer, displayStatus: true),
          ],
      ),

    );
}
Widget createRoomButton(){
    return  Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: BorderSide(width: 1.5, color: Colors.blue)
            )
        ),
        icon: Icon(
          Icons.chat,
          color: Colors.purple,
        ),

        label: Text("Create \nRoom",
          style: TextStyle(
            color: Colors.blue,
          ),),
        onPressed: (){
          print("Create a chat room!");

        },
      ),
    );
}
}
