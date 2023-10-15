import 'package:flutter/material.dart';
import 'package:flutter_kakao_app/components/chat_card.dart';
import 'package:flutter_kakao_app/model/chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "채팅",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: List.generate(
          chats.length,
          (index) => ChatCard(chat: chats[index]),
        ),
      ),
    );
  }
}
