// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ChatsViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        style: IconButton.styleFrom(
          backgroundColor: Colors.grey.withOpacity(0.2),
        ),
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      title: const Text(
        'Chats',
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: Colors.grey.withOpacity(0.2),
          ),
          icon: Icon(
            Icons.edit,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
