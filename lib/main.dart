import 'package:flutter/material.dart';
import 'package:yamatching/UI/components/searching_bar.dart';
import 'package:yamatching/constants/conatants.dart';

void main() => runApp(const Yamatching());

class Yamatching extends StatelessWidget {
  const Yamatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yamatching',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "Yamatching",
            style: TextStyle(
              fontFamily: 'SquarePeg-Regular',
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const <Widget>[
            Icon(
              Icons.sunny,
              size: 40,
            ),
          ]),
      body: Column(
        children: [
          SeachingBar(),
          kBarCrassItems[_currentIndex],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "test"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "test"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "test"),
        ],
        currentIndex: _currentIndex,
        onTap: (Index) => setState(() => _currentIndex = Index),
      ),
    );
  }
}
