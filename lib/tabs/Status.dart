import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StatusState();
  }
}

class StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return ListTile();
      },
    );
  }
}
