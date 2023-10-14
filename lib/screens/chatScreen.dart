import 'package:flutter/material.dart';
// import 'package:chat_bubbles/chat_bubbles.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 4.0),
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
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/b.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(children: [Positioned(bottom: 0, child: MessageBar())]),
        ));
  }
}

class MessageBar extends StatefulWidget {
  @override
  State<MessageBar> createState() => _MessageBarState();
}

class _MessageBarState extends State<MessageBar> {
  bool ischanged = false;

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Stack(
            children: [
              SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 1),
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    width: MediaQuery.of(context).size.width * 8.4 / 10,
                    child: Stack(children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.emoji_emotions)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: SizedBox(
                          width: ischanged ? 200 : 150,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                if (value.isEmpty) {
                                  ischanged = false;
                                } else {
                                  ischanged = true;
                                }
                              });
                            },
                            keyboardType: TextInputType.multiline,
                            maxLines: 6,
                            minLines: 1,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Message'),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                          child: Row(
                        children: [
                          if (!ischanged)
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.file_present_outlined)),
                          if (!ischanged)
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.currency_rupee)),
                          if (!ischanged)
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.camera_alt)),
                          if (ischanged)
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.file_present_outlined))
                        ],
                      ))
                    ]),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 2,
              child: InkWell(
                      child: Container(
                          // margin: EdgeInsets.only(left: 1, right: 2),
                          // width: MediaQuery.of(context).size.width*0.2,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(204, 7, 94, 84)),
                          child: Center(
                              child: ischanged?IconButton(
                                  onPressed: () {}, icon: Icon(Icons.send)):
                                  IconButton(
                                  onPressed: () {}, icon: Icon(Icons.mic))))),
            )
            ]
          ),
        ],
    );
  }
}
