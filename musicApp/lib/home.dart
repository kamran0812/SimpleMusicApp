import 'package:flutter/material.dart';

import 'package:assets_audio_player/assets_audio_player.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String link, url;

    final assetsAudioPlayer = AssetsAudioPlayer();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Icon(Icons.music_video),
        ],
        title: Text("MVplayer"),
      ),
      body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => {url = value},
              ),
              FlatButton.icon(
                color: Colors.red,
                onPressed: () async =>
                    {await assetsAudioPlayer.open(Audio.network(url))},
                icon: Icon(Icons.play_arrow_rounded),
                label: Text("Play From Link"),
              ),
              FlatButton.icon(
                color: Colors.red,
                onPressed: () async => {
                  await assetsAudioPlayer
                      .open(Audio.file("assets/audios/music.mp3"))
                },
                icon: Icon(Icons.play_arrow_rounded),
                label: Text("Play"),
              ),
              FlatButton.icon(
                color: Colors.red,
                onPressed: () => {assetsAudioPlayer.pause()},
                icon: Icon(Icons.pause_circle_filled_outlined),
                label: Text("Pause"),
              ),
            ],
          )),
    );
  }
}
