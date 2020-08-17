import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: "MYAPP", home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("ATAP")),
      body: null,
      bottomNavigationBar: BottomNavigationBarDemo(),
    );
  }
}

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndexHandler = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndexHandler = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      ///当BottomNavigationBarItem超过四个时会隐藏，需要修改BottomNavigationBarType才能显示出来
      type: BottomNavigationBarType.fixed,

      ///当BottomNavigationBarItem的索引值，从0开始
      currentIndex: _currentIndexHandler,
      onTap: _onTapHandler,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore), title: Text("Explore")),
        BottomNavigationBarItem(
            icon: Icon(Icons.history), title: Text("History")),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("List")),
        BottomNavigationBarItem(
            icon: Icon(Icons.my_location), title: Text("My")),
      ],
    );
  }
}
