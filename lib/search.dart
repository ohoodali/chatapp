import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatelessWidget {
  void callEmoji() {
    print('Emoji Icon Pressed...');
  }

  void callAttachFile() {
    print('Attach File Icon Pressed...');
  }

  void callCamera() {
    print('Camera Icon Pressed...');
  }

  void callVoice() {
    print('Voice Icon Pressed...');
  }

  Widget moodIcon() {
    return IconButton(
        icon: const Icon(
          Icons.mood,
          color: Color(0xFF00BFA5),
        ),
        onPressed: () => callEmoji());
  }

  Widget attachFile() {
    return IconButton(
      icon: const Icon(Icons.attach_file, color: Color(0xFF00BFA5)),
      onPressed: () => callAttachFile(),
    );
  }

  Widget camera() {
    return IconButton(
      icon: const Icon(Icons.photo_camera, color: Color(0xFF00BFA5)),
      onPressed: () => callCamera(),
    );
  }

  Widget voiceIcon() {
    return const Icon(
      Icons.keyboard_voice,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("TextField UI for Flutter Chat App"),
          ),
          body: Container(
            margin: const EdgeInsets.all(12.0),
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 7,
                            color: Colors.grey)
                      ],
                    ),
                    child: Row(
                      children: [
                        moodIcon(),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Message",
                                hintStyle: TextStyle(color: Color(0xFF00BFA5)),
                                border: InputBorder.none),
                          ),
                        ),
                        attachFile(),
                        camera(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                      color: Color(0xFF00BFA5), shape: BoxShape.circle),
                  child: InkWell(
                    child: voiceIcon(),
                    onLongPress: () => callVoice(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
