import 'package:flutter/material.dart';

class SeachingBar extends StatefulWidget {
  const SeachingBar({Key? key}) : super(key: key);

  @override
  State<SeachingBar> createState() => _SeachingBarState();
}

class _SeachingBarState extends State<SeachingBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextField(
        style: TextStyle(
          fontFamily: 'KaiseiOpti-Bold',
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: '山名・キーワードで探す',
        ),
      ),
    );
  }
}
