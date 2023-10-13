import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/Status.dart';
import 'package:whatsapp/tabs/calls.dart';
import 'package:whatsapp/tabs/chats.dart';

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
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
            bottom: const TabBar(
                indicatorWeight: 3,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text(
                      'Chats',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Status',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Calls',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              Chats(),
              Status(),
              Calls(),
            ],
          ),            
          floatingActionButton:  Container(
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              color: const Color.fromARGB(204, 7, 94, 84),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
            child: IconButton(icon: const Icon(Icons.chat_rounded,color: Colors.white),
            onPressed: () {},),
          ),
          
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        ));
  }
}
