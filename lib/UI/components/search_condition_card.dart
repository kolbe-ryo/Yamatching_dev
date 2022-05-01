import 'package:flutter/material.dart';
import 'package:yamatching/constants/conatants.dart';

class SearchConditionCard extends StatelessWidget {
  const SearchConditionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kPadding),
      //上と下に２０
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(20),
            left: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
