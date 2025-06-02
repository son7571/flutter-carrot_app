import 'package:carrot_app/models/chat_message.dart';
import 'package:carrot_app/screens/chatting/components/appbar_bottom_line.dart';
import 'package:carrot_app/screens/chatting/components/chat_containner.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        bottom: appbarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainner(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}
