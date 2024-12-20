// ignore_for_file: deprecated_member_use

import 'package:chat_ui/widgets/build_status_list_view.dart';
import 'package:chat_ui/widgets/chats_view_app_bar.dart';
import 'package:chat_ui/widgets/build_chats_list.dart';
import 'package:chat_ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: ChatsViewAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: CustomTextField(hintText: 'Search', icon: Icons.search),
            ),
          ),
          SliverToBoxAdapter(
            child: BuildStatusListView(),
          ),
          BuildChatsList(),
        ],
      ),
    );
  }
}
