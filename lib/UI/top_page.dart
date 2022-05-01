import 'package:flutter/material.dart';
import 'package:yamatching/UI/components/search_condition_card.dart';
import 'package:yamatching/constants/conatants.dart';

class Toppage extends StatefulWidget {
  const Toppage({Key? key}) : super(key: key);

  @override
  State<Toppage> createState() => _ToppageState();
}

class _ToppageState extends State<Toppage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: kPadding, left: kPadding, top: kPadding),
      child: Column(
        children: [
          SearchConditionCard(),
          SearchConditionCard(),
          SearchConditionCard(),
          Align(
            alignment: Alignment(1, 1),
            child: ClipOval(
              child: Material(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
