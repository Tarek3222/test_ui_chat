import 'package:chat_ui/models/story_model.dart';
import 'package:flutter/material.dart';

class BuildCustomStatus extends StatelessWidget {
  const BuildCustomStatus({super.key, required this.story});
  final UserModel story;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(story.image),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            story.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
