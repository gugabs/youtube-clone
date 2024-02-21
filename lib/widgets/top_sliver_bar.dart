import 'package:flutter/material.dart';

class TopSliverBar extends StatelessWidget {
  const TopSliverBar({ super.key });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 128,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Image.asset("assets/youtube_dark_logo.png")
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        const Padding(
          padding: EdgeInsets.only(right: 16),
          child: CircleAvatar(foregroundImage: NetworkImage('assets/avatars/user.jpg')),
        )
      ],
    );
  }
}