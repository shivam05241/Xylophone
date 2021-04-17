import 'package:assets_audio_player/assets_audio_player.dart';

class AudioPlayer {
  AssetsAudioPlayer assetAudioPlayer = AssetsAudioPlayer();

  void playAsset(String url) {
    assetAudioPlayer.open(Audio.file(url));
  }

  pause() {
    assetAudioPlayer.pause();
  }

  resume() {
    assetAudioPlayer.play();
  }
}
