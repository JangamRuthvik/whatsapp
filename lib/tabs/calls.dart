import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CallsState();
  }
}

class CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return ListTile();
      },
    );
  }
}
