import 'package:facebook_clone/Widgets/circularbutton.dart';
import 'package:facebook_clone/Widgets/headerbutton.dart';
import 'package:facebook_clone/Widgets/postCard.dart';
import 'package:facebook_clone/sections/header_button_section.dart';
import 'package:facebook_clone/sections/roomsections.dart';
import 'package:facebook_clone/sections/status_section.dart';
import 'package:facebook_clone/sections/storysections.dart';
import 'package:flutter/material.dart';

import 'assets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("Search screen appears!");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("Chat screen appears!");
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
              buttonAction: (){
                print("Go Live!");
                },
                
        buttonColor: Colors.red,
        buttonIcon: Icons.video_call,
        buttonText: "Live",
              ),
              buttonTwo: headerButton(
                buttonAction: () {
                  print("Take Photo!");
                },
                buttonColor: Colors.green,
                buttonIcon: Icons.photo_library,
                buttonText: "Photo",
              ),
              buttonThree: headerButton(
                buttonAction: () {
                  print("Create Room!");
                },
                buttonColor: Colors.purple,
                buttonIcon: Icons.video_call,
                buttonText: "Room",
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: ranveer,
              name: "Deepika Padukone",
              publishedAt: "5h",
              postTitle: 'Clicks',
              postImage: posts1,
              showBlueTick: true,
              likeCount: "10K",
              shareCount: "1K",
              commentCount: "1K",
            ),
            thickDivider,
            PostCard(avatar: mohanlal,
                name: "Mohanlal",
                publishedAt: "1 day ago",
                postTitle: "<3",
                postImage: mohanlal,
                likeCount: "100K",
                commentCount: "12K",
                shareCount: "2K",
            showBlueTick: true,
            ),
            thickDivider,
        PostCard(avatar: dulquer,
          name: "Dulquer Salmaan",
          publishedAt: "2h",
          postTitle: dqtitle,
          postImage: posts3,
          likeCount: "15K",
          commentCount: "7K",
          shareCount: "1K",
          showBlueTick: true,
        ),
          ],
        ),
      ),
    );
  }
}
