import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtubevdo extends StatefulWidget {
  const Youtubevdo({super.key});

  @override
  State<Youtubevdo> createState() => _YoutubevdoState();
}

class _YoutubevdoState extends State<Youtubevdo> {
  String videoUrl = 'https://youtu.be/wtq1-RYbZQM?si=VP4ILinxWO-MUqoh';
  late YoutubePlayerController myController;
  @override
  void initState() {
    super.initState();

    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    print(videoId);

    if (videoId != null) {
      myController = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
          isLive: false,
        ),
      );
    } else {
      throw Exception('Invalid video URL');
    }
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: myController,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
          progressColors: const ProgressBarColors(
            playedColor: Colors.red,
            handleColor: Colors.red,
          ),
        ),
        builder: (context, player) {
          return Container(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10), child: player),
          );
        });
  }
}
