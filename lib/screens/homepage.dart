import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls.dart';
import 'package:whatsapp_clone/screens/cam.dart';
import 'package:whatsapp_clone/screens/chats.dart';
import 'package:whatsapp_clone/screens/status.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> menu = ["New group","New broadcast","WhatsApp Web","Starred messages","Payments","Settings"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: Text("WhatsApp"),
          actions: [
            IconButton(
              icon: Icon(Icons.search), 
              onPressed: (){}),
            PopupMenuButton(
              offset: Offset(0,-100),
              itemBuilder: (BuildContext context){
                return menu.map((String choice){
                  return PopupMenuItem(
                    value: choice,
                    child: Text(choice)
                    );
                }).toList();
              }
              ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_enhance)),
              Tab(text: "CHATS",),
              Tab(text: "STATUS",),
              Tab(text: "CALLS",)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CamPage(),
            ChatsPage(),
            StatusPage(),
            CallsPage()
          ]),
        
      ),
      );
  }
}