import 'package:chat_ui/widgets/build_status_list_view.dart';
import 'package:flutter/material.dart';

class BuildChatsList extends StatelessWidget {
  const BuildChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(stories[index].image),
          ),
          title: Text(
            stories[index].name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
          subtitle: Text(
            stories[index].message,
            style: const TextStyle(color: Colors.grey),
          ),
          trailing: Text(
            stories[index].time,
            style: const TextStyle(color: Colors.grey),
          ),
        );
      },
      itemCount: stories.length,
    );
  }
}
