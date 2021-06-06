import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String profile;
  ChatTile({this.title,this.subtitle,this.date, this.profile});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: ExactAssetImage(profile),
        maxRadius: 25,
      ),
      trailing: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(date),
          ),
        ],
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: (){},
    );
  }
}