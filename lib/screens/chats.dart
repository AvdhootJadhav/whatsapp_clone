import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chattile.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ChatTile(title: "Debugger", subtitle: "Titan OP: Hello",date: "00:15",profile: "assets/images/flutter.png",),
          Padding(
            padding: const EdgeInsets.only(left:90.0, right: 14),
            child: Divider(
              height: 1,
              color: Colors.grey[400],
            ),
          ),
          ChatTile(title: "Amey", subtitle: "Exam kaisa tha?",date: "14:15", profile: "assets/images/onepiece.png",),
          Padding(
            padding: const EdgeInsets.only(left:90.0, right: 14),
            child: Divider(
              height: 1,
              color: Colors.grey[400],
            ),
          ),
          ChatTile(title: "Oo ma goo Turu lob", subtitle: "Mohit: Hello",date: "16:15",profile: "assets/images/WhatsApp Image 2021-06-03 at 20.36.20.jpeg",),
          Padding(
            padding: const EdgeInsets.only(left:90.0, right: 14),
            child: Divider(
              height: 1,
              color: Colors.grey[400],
            ),
          ),
          ChatTile(title: "Mohit", subtitle: "How are you?",date: "18:15",profile: "assets/images/opposter.jpg",),
          Padding(
            padding: const EdgeInsets.only(left:90.0, right: 14),
            child: Divider(
              height: 1,
              color: Colors.grey[400],
            ),
          ),
          ChatTile(title: "Ajay", subtitle: "Hii",date: "13:15",profile: "assets/images/WhatsApp Image 2021-06-03 at 20.38.04.jpeg",),

        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff25d366),
          child: Icon(Icons.message),
          onPressed: (){},
        ),
    );
  }
}