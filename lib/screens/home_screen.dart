import 'package:flutter/material.dart';

import 'package:youtube_clone/data.dart';

import 'package:youtube_clone/widgets/top_sliver_bar.dart';
import 'package:youtube_clone/widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const TopSliverBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final video = videos[index];
                return VideoCard(video: video);
              },
              childCount: videos.length,
            ),
          ),
        ],
      ),
    );
  }
}