import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String profile;
  final String type;
  CallTile({this.title,this.subtitle,this.date, this.profile, this.type});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: ExactAssetImage(profile),
        maxRadius: 25,
      ),
      trailing: Icon(Icons.call, color: Color(0xff075e54),),
      title: Text(title),
      subtitle: Row(
        children: [
          Icon(
            type=="made"?Icons.call_made:type=="recieved"?Icons.call_received:Icons.call_missed, 
            size: 15,color: type=="missed"?Colors.red:Color(0xff25d366),),
          SizedBox(width: 5,),
          Text(subtitle+date),
        ],
      ),
      onTap: (){},
    );
  }
}