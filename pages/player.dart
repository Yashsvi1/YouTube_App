import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Player extends StatefulWidget {
  String id;
  Player(this.id);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late YoutubePlayerController _controller;
  void initState() {                                //jab widget first time load hogi tb state pehli bar chlega aur initstate initialize hoga
    super.initState();
    _controller = YoutubePlayerController(
    initialVideoId: widget.id,
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
    ),
  );
  }

  bool _isPlayerReady = false;

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
      
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
    controller: _controller,
    showVideoProgressIndicator: true,

    onReady : () {
        _controller.addListener(listener);
    },
);
  }
}