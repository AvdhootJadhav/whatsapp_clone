import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/storypage.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            title: Text("My Status"),
            subtitle: Text("Tap to add status"),
            leading: CircleAvatar(
              backgroundImage: ExactAssetImage("assets/images/WhatsApp Image 2021-06-03 at 20.38.04.jpeg"),
              maxRadius: 25,
            ),
          ),
          Container(
            height: 35,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey[300]
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,top: 8),
              child: Text("Viewed Updates", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w400),),
            )),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: ExactAssetImage("assets/images/onepiece.png"),
                maxRadius: 25,
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPage()));
              },
              title: Text("Amey"),
              subtitle: Text("Today, 12:00"),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff25d366),
          child: Icon(Icons.camera_alt),
          onPressed: (){},
        ),
    );
  }
}