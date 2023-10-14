import 'package:flutter/material.dart';
import 'package:flutter_kakao_app/components/profile_card.dart';
import 'package:flutter_kakao_app/model/user.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "친구",
            style: TextStyle(color: Colors.black),
          )),
      body: Column(
        children: [
          const SizedBox(height: 10),
          ProfileCard(user: me),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text("친구"),
                const SizedBox(width: 6),
                Text("${friends.length}"),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: List.generate(
                friends.length,
                (index) => ProfileCard(user: friends[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
