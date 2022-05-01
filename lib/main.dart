import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text(
            "Yamatching",
            style: TextStyle(
              fontFamily: 'SquarePeg-Regular',
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            Icon(
              Icons.sunny,
              size: 40,
            ),
          ]),
      body: Column(
        children: [
          Container(
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
          ),
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
                EdgeInsets.symmetric(vertical: 25, horizontal: 20), //上と下に２０
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
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            //上と下に２０
            child: Container(
              color: Colors.green,
              height: 110,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25), //上と下に２０
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
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
