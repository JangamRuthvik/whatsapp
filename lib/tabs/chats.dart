import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chatScreen.dart';

class Chats extends StatefulWidget {
  @override
  State<Chats> createState() {
    return ChatsState();
  }
}

class ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.all(16),
          leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/a.jpg')),
          title: const Text(
            'Notes',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          isThreeLine: true,
          subtitle: const Text('ok'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return ChatScreen();
              },
            ));
          },
        );
      },
    );
  }
}
