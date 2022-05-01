import 'package:flutter/material.dart';
import 'package:yamatching/constants/conatants.dart';

class Toppage extends StatefulWidget {
  const Toppage({Key? key}) : super(key: key);

  @override
  State<Toppage> createState() => _ToppageState();
}

class _ToppageState extends State<Toppage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 25, //下に２０
          ),
          child: Container(
            color: Colors.green,
            height: 25,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: 25, horizontal: kPadding), //上と下に２０
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
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: kPadding),
          //上と下に２０
          child: Container(
            color: Colors.green,
            height: 110,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: 25, horizontal: kPadding), //上と下に２０
          child: Container(
            color: Colors.green,
            height: 110,
          ),
        ),
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
    );
  }
}
