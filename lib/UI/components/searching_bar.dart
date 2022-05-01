import 'package:flutter/material.dart';
import 'package:yamatching/constants/conatants.dart';

class SeachingBar extends StatefulWidget {
  const SeachingBar({Key? key}) : super(key: key);

  @override
  State<SeachingBar> createState() => _SeachingBarState();
}

class _SeachingBarState extends State<SeachingBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(right: kPadding, left: kPadding, bottom: kPadding),
      color: Colors.green,
      width: double.infinity,
      child: TextField(
        style: TextStyle(
          fontFamily: 'KaiseiOpti-Bold',
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: '山名・キーワードで探す',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
