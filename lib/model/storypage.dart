import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final _controller = StoryController();


  List<StoryItem> storyitems=[
    StoryItem.text(
      title: '''"I don't care what society says. I've never regretted doing anything. I will survive and do what I want to do."
      - Roronoa Zoro''',
      backgroundColor: Colors.blueGrey,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        storyItems: storyitems,
        controller: _controller,
        inline: false,
        repeat: false,
      ),
      
    );
  }
}