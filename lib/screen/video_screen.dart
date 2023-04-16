import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class VideoScreen extends StatefulWidget {

  final String id;

  VideoScreen({required this.id});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  // If the requirement is just to play a single video.
  @override
  Widget build(BuildContext context) {

    String video_id = widget.id;
    final _controller = YoutubePlayerController.fromVideoId(
      videoId: video_id,
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
            height: 280,
            child: YoutubePlayer(
              controller: _controller,
              aspectRatio: 16 / 9,
            )
        ),
      ),
    );
  }
}
