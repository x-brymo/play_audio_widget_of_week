
import 'package:audio_service/audio_service.dart';
import 'package:easy_audio_player/widgets/players/basic_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
  String url = "https://github.com/x-brymo/play_audio_widget_of_week/blob/widget_2th_of_week/asset/audio/ring.mp3";
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/';
  // String url = "https://github.com/x-brymo/play_audio_widget_of_week/blob/widget_2th_of_week/asset/audio/ring.mp3";
  final ConcatenatingAudioSource _playlist = ConcatenatingAudioSource(children: [
    AudioSource.uri(Uri.parse(url),
        tag: MediaItem(
            id: '1', artUri: Uri.parse('https://picsum.photos/300/300'), title: 'Audio Title ', album: 'amazing album'))
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: BasicAudioPlayer(playlist: _playlist),
                ))));
  }
}