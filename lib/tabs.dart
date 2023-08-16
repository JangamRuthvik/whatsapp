import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(204, 7, 94, 84),
            title: const Text('WhatsApp'),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
            bottom: const TabBar(
                padding: EdgeInsets.only(top: 16),
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                tabs: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Chats',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Status',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Calls',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
