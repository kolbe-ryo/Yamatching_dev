import 'package:flutter/material.dart';
import 'package:yamatching/constants/constants.dart';

class SearchConditionCard extends StatefulWidget {
  const SearchConditionCard({Key? key}) : super(key: key);

  @override
  State<SearchConditionCard> createState() => _SearchConditionCardState();
}

class _SearchConditionCardState extends State<SearchConditionCard> {
  double _value = 0.0;

  void _changeSlider(double e) => setState(() {
        _value = e;
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("場所"),
        Card(
          color: Colors.green,
          child: Column(
            children: [
              Text("県内"),
              Row(
                children: [
                  Icon(Icons.house),
                  SizedBox(
                    width: 200,
                    child: Slider(
                      label: '${_value}',
                      min: 0,
                      max: 10,
                      value: _value,
                      activeColor: Colors.orange,
                      inactiveColor: Colors.blueAccent,
                      divisions: 10,
                      onChanged: _changeSlider,
                    ),
                  ),
                  Icon(Icons.airplanemode_active),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
