import 'package:flutter/material.dart';
import 'package:audiobook_app/tts_service.dart';

class PlayerScreen extends StatelessWidget {
  final String text;

  const PlayerScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audiobook Player'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            TTSService.convertTextToSpeech(text);
          },
          child: Text('Play Audiobook'),
        ),
      ),
    );
  }
}
