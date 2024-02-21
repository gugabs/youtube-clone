import 'package:flutter/material.dart';

import 'package:youtube_clone/data.dart';

class VideoCard extends StatelessWidget {
  final Video video;

  const VideoCard({
    Key? key,
    required this.video,
  }) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                video.thumbnailUrl,
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.only(top: 2, right: 4, bottom: 2, left: 4),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    color: Colors.black.withOpacity(0.65),
                  ),
                  child:  Text(video.duration),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                CircleAvatar(foregroundImage: NetworkImage(video.author.profileImageUrl)),
                const SizedBox(width: 8),
                Expanded(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          video.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ),
                      Flexible(
                        child: Text(
                          '${video.author.username} • ${video.viewCount} visualizações • ${video.publishedAt}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ),
                    ]
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}