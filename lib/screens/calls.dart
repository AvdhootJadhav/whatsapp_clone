import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/calltitle.dart';

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CallTile(title: "Manish", subtitle: "Yesterday, ",date: "12:00",profile: "assets/images/flutter.png",type: "made",),
          Padding(
            padding: const EdgeInsets.only(left:90.0, right: 14),
            child: Divider(
              height: 1,
              color: Colors.grey[400],
            ),
          ),
          CallTile(title: "Amey", subtitle: "1 June, ",date: "14:15", profile: "assets/images/onepiece.png",type: "recieved",),
          Padding(
            padding: const EdgeInsets.only(left:90.0, right: 14),
            child: Divider(
              height: 1,
              color: Colors.grey[400],
            ),
          ),
          CallTile(title: "Mohit", subtitle: "Today, ",date: "16:15",profile: "assets/images/opposter.jpg",type: "missed",),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff25d366),
          child: Icon(Icons.call),
          onPressed: (){},
        ),
    );
  }
}