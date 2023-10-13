import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left:4.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white, // Customize the color of the icon
                ),
                Expanded(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/a.jpg'),
                    radius: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        title: const Text(
          'Notes',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        backgroundColor: const Color.fromARGB(204, 7, 94, 84),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
