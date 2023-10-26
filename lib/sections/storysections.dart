import 'package:facebook_clone/Widgets/storycard.dart';
import 'package:facebook_clone/assets.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: deepika,
            story: deepika,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Deepika Padukone",
            avatar: ranveer,
            story: ranveer,
            createStoryStatus: false,
            displayBorder: true,
          ),
      StoryCard(
        labelText: "Mohanlal",
        avatar: mohanlal,
        story: mohanlal,
        createStoryStatus: false,
        displayBorder: true,
      ),
      ],
      ),
    );
  }
}

